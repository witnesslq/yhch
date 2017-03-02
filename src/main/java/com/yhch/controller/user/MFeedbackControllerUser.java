package com.yhch.controller.user;

import com.github.pagehelper.PageInfo;
import com.yhch.bean.PageResult;
import com.yhch.pojo.MFeedback;
import com.yhch.pojo.User;
import com.yhch.service.MFeedbackService;
import com.yhch.service.PropertyService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * MFeedbackControllerUser
 */
@Controller
@RequestMapping("/user/mFeedback")
public class MFeedbackControllerUser {

    @Autowired
    private PropertyService propertyService;

    @Autowired
    private MFeedbackService mFeedbackService;


    /**
     * 添加反馈记录
     *
     * @param mFeedback
     * @return
     */
    @RequestMapping("/addMFeedback")
    public String addMFeedback(MFeedback mFeedback) {

        this.mFeedbackService.save(mFeedback);

        return "/mFeedback/mFeedbackList";
    }


    /**
     * 根据客户id查询反馈记录，分页显示
     *
     * @param pageNumber
     * @return
     */
    @RequestMapping("/mFeedbackList/{pageNumber}")
    @ResponseBody
    public PageResult searchexpert(@PathVariable("pageNumber") int pageNumber) {

        User activeUser = (User) SecurityUtils.getSubject().getPrincipal();
        int memberId = activeUser.getId();

        MFeedback record = new MFeedback();
        record.setId(memberId);

        PageInfo<MFeedback> mFeedbackPageInfo = this.mFeedbackService.queryPageListByWhere(pageNumber, this
                .propertyService.rows, record);

        return new PageResult(mFeedbackPageInfo);
    }

}
