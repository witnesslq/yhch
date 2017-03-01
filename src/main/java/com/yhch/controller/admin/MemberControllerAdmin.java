package com.yhch.controller.admin;

import com.github.pagehelper.PageInfo;
import com.yhch.bean.PageResult;
import com.yhch.pojo.MAccount;
import com.yhch.pojo.MHealth;
import com.yhch.pojo.Member;
import com.yhch.pojo.User;
import com.yhch.service.*;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

/**
 * MemberControllerAdmin
 */
@Controller
@RequestMapping("/admin/member")
public class MemberControllerAdmin {

    @Autowired
    private MemberService memberService;

    @Autowired
    private MHealthService mHealthService;

    @Autowired
    private MAccountService mAccountService;

    @Autowired
    private UserService userService;

    @Autowired
    private PropertyService propertyService;

    /**
     * 根据id精确查找会员
     *
     * @param memberId
     * @return
     */
    @RequestMapping("/searchMemberById/{memberId}")
    public ModelAndView searchMemberById(@PathVariable("memberId") Integer memberId) {
        Member member = memberService.queryById(memberId);

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("member", member);
        modelAndView.setViewName("/admin/member/memberDetail");
        return modelAndView;
    }

    /**
     * 根据id查找会员姓名
     *
     * @param memberId
     * @return
     */
    @RequestMapping("/searchMemberNameById/{memberId}")
    @ResponseBody
    public Member searchMemberNameById(@PathVariable("memberId") Integer memberId) {
        Member member = memberService.queryById(memberId);

        return member;
    }

    /**
     * 显示添加会员界面
     *
     * @return
     */
    @RequestMapping("/addMemberButton")
    public String addMemberButton() {
        return "/admin/member/newMember";
    }

    /**
     * 添加会员
     *
     * @param member
     * @return
     */
    @RequestMapping("/addMember")
    public ModelAndView addMember(Member member) {

        ModelAndView modelAndView = new ModelAndView();

        int res = memberService.save(member);
        if (res == 0) {
            modelAndView.addObject("member", member);
            modelAndView.setViewName("/admin/member/newMember");
        } else {
            modelAndView.addObject("member", member);
            modelAndView.setViewName("/admin/member/memberList");
        }

        return modelAndView;
    }

    /**
     * 根据会员id删除会员
     *
     * @param id
     * @return
     */
    @RequestMapping("/deleteMember/{deleteId}")
    public String deleteMember(@PathVariable("deleteId") Integer id) {
        memberService.deleteById(id);
        return "/admin/member/memberList";
    }

    /**
     * 更新会员
     *
     * @param member
     * @return
     */
    @RequestMapping("/updateMember")
    public String updateMember(Member member) {
        memberService.updateSelective(member);

        return "/admin/member/memberList";
    }

    /**
     * 会员列表分页显示
     *
     * @param pageNumber
     * @return
     */
    @RequestMapping("/memberList/{pageNumber}")
    @ResponseBody
    public PageResult memberList(@PathVariable("pageNumber") Integer pageNumber) {

        PageInfo<Member> memberPageInfo = this.memberService.queryPageListByWhere(pageNumber, this.propertyService
                .rows, null);
        return new PageResult(memberPageInfo);
    }

    /**
     * 根据会员生成系统登录账号
     *
     * @param memberId
     * @return
     */
    @RequestMapping("/generateSysAccount/{memberId}")
    @ResponseBody
    public Map<String, String> generateSysAccountFromMember(@PathVariable("memberId") int memberId) {

        User newUser = new User();
        newUser.setAuth(0); // 从member生成的user默认为0
        newUser.setId(memberId);
        newUser.setUsername(String.valueOf(memberId)); // 默认登录账号为memberId
        newUser.setPassword((new SimpleHash("md5", "123456")).toString()); // 默认初始密码为123456
        newUser.setName(memberService.queryById(memberId).getName());

        userService.save(newUser);

        Map<String, String> resultMap = new HashMap<String, String>(1);
        resultMap.put("result", "success");

        return resultMap;
    }

    /**
     * 根据姓名查询会员并分页显示
     *
     * @param name
     * @param pageNumber
     * @return
     */
    @RequestMapping("/searchMemberByName/{memberName}/{pageNumber}")
    @ResponseBody
    public PageResult searchMember(@PathVariable("memberName") String name,
                                   @PathVariable("pageNumber") int pageNumber) {

        PageInfo<Member> memberPageInfo = memberService.queryPageListByPropertyFuzzy(pageNumber, this.propertyService
                        .rows,
                "name", name);
        return new PageResult(memberPageInfo);
    }

    /**
     * 根据姓名查询会员,返回会员的基本信息、健康摘要信息和账户信息
     *
     * @param id
     * @return
     */
    @RequestMapping("/searchMemberByNameWithInfos/{memberId}")
    @ResponseBody
    public Map<String, Object> searchMemberWithInfos(@PathVariable("memberId") int id) {

        // 根据客户id查询member信息
        Member memberRecord = new Member();
        memberRecord.setId(id);
        Member member = this.memberService.queryOne(memberRecord);

        // 根据客户id查询health信息
        MHealth mHealthRecorcd = new MHealth();
        mHealthRecorcd.setId(id);
        MHealth mHealth = this.mHealthService.queryOne(mHealthRecorcd);

        // 根据客户id查询account信息
        MAccount mAccountRecord = new MAccount();
        mAccountRecord.setId(id);
        MAccount mAccount = this.mAccountService.queryOne(mAccountRecord);

        Map<String, Object> result = new HashMap<String, Object>(3);
        result.put("member", member);
        result.put("health", mHealth);
        result.put("account", mAccount);

        return result;
    }
}
