package com.yhch.controller.user;

import com.github.pagehelper.PageInfo;
import com.yhch.bean.PageResult;
import com.yhch.pojo.MAccount;
import com.yhch.pojo.User;
import com.yhch.service.MAccountService;
import com.yhch.service.PropertyService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;


@Controller
@RequestMapping("/user/mAccount")
public class MAccountControllerUser {

    @Autowired
    private MAccountService mAccountService;

    @Autowired
    private PropertyService propertyService;


    /**
     * 根据自己的id查询所有与自己相关的消费记录
     *
     * @param pageNumber
     * @return
     */
    @RequestMapping("/mAccountList/{memberId}/{pageNumber}")
    @ResponseBody
    public PageResult mAccountList(@PathVariable("pageNumber") Integer pageNumber) {

        User activeUser = (User) SecurityUtils.getSubject().getPrincipal();
        int memberId = activeUser.getId();

        MAccount record = new MAccount();
        record.setId(memberId);

        PageInfo<MAccount> mAccountPageInfo = mAccountService.queryPageListByWhere(pageNumber, this.propertyService
                .rows, record);


        return new PageResult(mAccountPageInfo);
    }

    /**
     * 查询余额
     *
     * @return
     */
    @RequestMapping("/mAccountBalance")
    @ResponseBody
    public Map<String, Double> mAccountBalance() {

        User activeUser = (User) SecurityUtils.getSubject().getPrincipal();
        int memberId = activeUser.getId();

        return mAccountService.getMAccountBalance(memberId);
    }
}
