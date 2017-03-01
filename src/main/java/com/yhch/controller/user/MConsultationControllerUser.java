package com.yhch.controller.user;

import com.github.pagehelper.PageInfo;
import com.yhch.bean.PageResult;
import com.yhch.pojo.MConsultation;
import com.yhch.pojo.User;
import com.yhch.service.MConsultationService;
import com.yhch.service.PropertyService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/user/mConsultation")
public class MConsultationControllerUser {

    @Autowired
    private MConsultationService mConsultationService;

    @Autowired
    private PropertyService propertyService;

    /**
     * 显示所有与自己相关的会诊记录
     *
     * @param pageNumber
     * @return
     */
    @RequestMapping("/mConsultationList/{pageNumber}")
    @ResponseBody
    public PageResult mConsultationList(@PathVariable("pageNumber") int pageNumber) {

        User activeUser = (User) SecurityUtils.getSubject().getPrincipal();
        int memberId = activeUser.getId();

        MConsultation record = new MConsultation();
        record.setId(memberId);

        PageInfo<MConsultation> mConsultationPageInfo = this.mConsultationService.queryPageListByWhere(pageNumber,
                this.propertyService.rows, record);

        return new PageResult(mConsultationPageInfo);
    }
}
