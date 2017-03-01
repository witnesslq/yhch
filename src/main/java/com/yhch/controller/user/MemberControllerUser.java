package com.yhch.controller.user;

import com.yhch.pojo.Member;
import com.yhch.pojo.User;
import com.yhch.service.MemberService;
import com.yhch.service.PropertyService;
import com.yhch.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/user/member")
public class MemberControllerUser {

    @Autowired
    private PropertyService propertyService;

    @Autowired
    private UserService userService;

    @Autowired
    private MemberService memberService;

    /**
     * 根据会员id查询自己的信息
     *
     * @return
     */
    @RequestMapping("/searchMemberById")
    public ModelAndView searchMemberById() {

        User activeUser = (User) SecurityUtils.getSubject().getPrincipal();
        int memberId = activeUser.getId();

        Member member = this.memberService.queryById(memberId);

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("member", member);
        modelAndView.setViewName("/user/member/memberInfo");

        return modelAndView;
    }

    /**
     * 更新会员
     *
     * @param member
     * @return
     */
    @RequestMapping("/updateMember")
    public ModelAndView updateMember(Member member) {

        this.memberService.updateSelective(member);

        return searchMemberById();
    }

    /**
     * 修改用户名
     *
     * @param newUsername 新用户名
     * @return
     */
    @RequestMapping("/changeUsername/{newUsername}")
    @ResponseBody
    public Map<String, String> changeUsername(@PathVariable("newUsername") String newUsername) {

        User activeUser = (User) SecurityUtils.getSubject().getPrincipal();
        int changeUsername = userService.changeUsername(activeUser.getUsername(), newUsername);

        Map<String, String> resultMap = new HashMap<String, String>(1);

        if (changeUsername == 0) {
            resultMap.put("result", "用户名已存在");
        } else {
            resultMap.put("result", "success");
        }
        return resultMap;
    }
}
