package com.yhch.controller.admin;

import com.github.pagehelper.PageInfo;
import com.yhch.bean.PageResult;
import com.yhch.pojo.MFeedback;
import com.yhch.service.MFeedbackService;
import com.yhch.service.PropertyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;

/**
 * MFeedbackControllerAdmin
 */
@Controller
@RequestMapping("/admin/mFeedback")
public class MFeedbackControllerAdmin {

    @Autowired
    private MFeedbackService mFeedbackService;

    @Autowired
    private PropertyService propertyService;

    /**
     * 添加反馈记录
     *
     * @return
     */
    @RequestMapping("/addMFeedback")
    public String addMFeedback() {

        MFeedback mFeedback = new MFeedback();

        mFeedback.setFeedbackid(1);
        mFeedback.setId(1);
        mFeedback.setTime(new Date());
        mFeedback.setContent("哈哈哈");
        mFeedback.setTel("12345678910");
        mFeedback.setNote("反馈记录备注");

        mFeedbackService.save(mFeedback);

        return "/mFeedback/mFeedbackList";
    }

    /**
     * 根据流水号删除反馈记录
     *
     * @param id
     * @return
     */
    @RequestMapping("/deleteMFeedback/{deleteId}")
    public String deleteMFeedback(@PathVariable("deleteId") Integer id) {
        // ！！！删除反馈记录
        mFeedbackService.deleteById(id);

        return "/mFeedback/mFeedbackList";
    }

    /**
     * 添加反馈记录
     *
     * @param mFeedback
     * @return
     */
    @RequestMapping("/updateMFeedback")
    public String updateMFeedback(MFeedback mFeedback) { // mFeedback mFeedback

        mFeedbackService.update(mFeedback);

        return "/mFeedback/mFeedbackList";
    }


    /**
     * 分页显示所有反馈记录表
     *
     * @param pageNumber
     * @return
     */
    @RequestMapping("/mFeedbackList/{pageNumber}")
    @ResponseBody
    public PageResult expertList(@PathVariable("pageNumber") Integer pageNumber) {

        PageInfo<MFeedback> mFeedbackPageInfo = mFeedbackService.queryPageListByWhere(pageNumber, propertyService.rows, null);

        return new PageResult(mFeedbackPageInfo);
    }


    /**
     * 根据客户id模糊查询反馈记录，分页显示
     *
     * @param id
     * @param pageNumber
     * @return
     */
    @RequestMapping("/searchMFeedback/{id}/{pageNumber}")
    @ResponseBody
    public PageResult searchexpert(@PathVariable("id") int id, @PathVariable("pageNumber") int pageNumber) {

        PageInfo<MFeedback> mFeedbackPageInfo = this.mFeedbackService.queryPageListByPropertyFuzzy(pageNumber, propertyService.rows,
                "id", String.valueOf(id));

        return new PageResult(mFeedbackPageInfo);
    }
}
