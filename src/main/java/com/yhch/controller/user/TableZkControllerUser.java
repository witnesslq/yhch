package com.yhch.controller.user;

import com.yhch.service.PropertyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**化验-心血管 controller
 * @author zlren
 */
@Controller
@RequestMapping("/user/zk")
public class TableZkControllerUser {

    @Autowired
    private PropertyService propertyService;

}
