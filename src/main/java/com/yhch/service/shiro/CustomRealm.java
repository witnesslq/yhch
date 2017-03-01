package com.yhch.service.shiro;

import com.yhch.pojo.Member;
import com.yhch.pojo.User;
import com.yhch.service.MemberService;
import com.yhch.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class CustomRealm extends AuthorizingRealm {

    private static final org.slf4j.Logger LOGGER = LoggerFactory.getLogger(CustomRealm.class);

    // 注入service
    @Autowired
    private UserService userService;

    @Autowired
    private MemberService memberService;

    /**
     * @param token
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {

        LOGGER.info("身份认证");
        // 从token中取出身份信息
        String username = (String) token.getPrincipal();
        LOGGER.info("username : " + username);

        User activeUser = userService.getUserByUsername(username);

        if (activeUser == null) {
            LOGGER.info("无此用户");
            return null;
        }

        // activeUser的extend域填充了用户的姓名(member.name)
        Member activeMember = memberService.queryById(activeUser.getId());
        activeUser.setName(activeMember.getName());

        SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(activeUser,
                activeUser.getPassword(), this.getName());

        LOGGER.info(String.valueOf(activeUser));

        return simpleAuthenticationInfo;
    }

    /**
     * 用于授权
     *
     * @param principals
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {

        LOGGER.info("权限认证");

        User activeUser = (User) principals.getPrimaryPrincipal();
        int auth = activeUser.getAuth();

        SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();

        if (auth == 0) {
            simpleAuthorizationInfo.addStringPermission("user");
            LOGGER.info("user权限");
        } else if (auth == 1) {
            simpleAuthorizationInfo.addStringPermission("admin");
            LOGGER.info("admin权限");
        }

        return simpleAuthorizationInfo;
    }

    /**
     * 清除缓存
     */
    public void clearCached() {
        PrincipalCollection principals = SecurityUtils.getSubject().getPrincipals();
        super.clearCache(principals);
    }

}
