package com.yhch.controller.user;

import com.yhch.pojo.MHealth;
import com.yhch.pojo.User;
import com.yhch.service.MHealthService;
import com.yhch.service.PropertyService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * MHealthControllerUser
 */
@Controller
@RequestMapping("/user/mHealth")
public class MHealthControllerUser {

    @Autowired
    private PropertyService propertyService;

    @Autowired
    private MHealthService mHealthService;

    /**
     * 根据客户id号查询
     *
     * @return
     */
    @RequestMapping("/searchMHealth")
    @ResponseBody
    public MHealth getMHealth() { //

        User activeUser = (User) SecurityUtils.getSubject().getPrincipal();
        int memberId = activeUser.getId();

        MHealth mHealth = this.mHealthService.queryById(memberId);

        return mHealth;
    }
}
