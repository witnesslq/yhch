package com.yhch.controller.common;

import com.alibaba.fastjson.JSONObject;
import com.yhch.pojo.User;
import com.yhch.service.MemberService;
import com.yhch.service.UserService;
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * LoginController
 */
@Controller
@RequestMapping("/auth")
public class LoginController {

    Logger logger = Logger.getLogger(this.getClass());

    @Autowired
    private UserService userService;

    @Autowired
    private MemberService memberService;

    /**
     * 首页跳转
     *
     * @return
     * @throws Exception
     */
    @RequestMapping("/home")
    public String home() throws Exception {

        System.out.println("home controller");

        User activeUser = (User) SecurityUtils.getSubject().getPrincipal();

        String resultUrl = null;
        if (activeUser != null) {

            int auth = activeUser.getAuth();

            if (auth == 0) { // user
                resultUrl = "/user/home";
            } else if (auth == 1) { // admin
                resultUrl = "/admin/home";
            }
        }

        // 显示登录成功后的第一个界面系统页面(.jsp)
        return resultUrl;
    }


    /**
     * 通用页面跳转controller
     *
     * @return
     * @throws Exception
     */
    @RequestMapping("{pageName}")
    public String login(@PathVariable("pageName") String pageName) {


        // 此方法不处理登陆成功（认证成功），shiro认证成功会自动跳转到上一个请求路径
        // 登陆失败还到login页面

        return pageName;
    }

    /**
     * 修改密码
     *
     * @param stringPassword
     * @return
     */
    @RequestMapping("/changePassword")
    @ResponseBody
    public Map<String, String> changePassword(@RequestBody String stringPassword) {

        JSONObject passwordJson = (JSONObject) JSONObject.parse(stringPassword);
        String newPassword = (String) passwordJson.get("password");

        Map<String, String> res = new HashMap<String, String>(1);

        SimpleHash simpleHash = new SimpleHash("md5", newPassword);
        String newPasswordMd5 = simpleHash.toString();

        logger.info("新密码 :　" + newPassword);
        logger.info("md5加密后的密码 : " + newPasswordMd5.toLowerCase());

        // 得到当前登录的用户的用户名
        User activeUser = (User) SecurityUtils.getSubject().getPrincipal();
        String username = activeUser.getUsername();

        // 修改密码的操作
        int resultOfChangePassword = userService.changePassword(username, newPasswordMd5);

        if (resultOfChangePassword == 1) {
            res.put("result", "success");
        } else {
            res.put("result", "error");
        }

        return res;
    }
}
