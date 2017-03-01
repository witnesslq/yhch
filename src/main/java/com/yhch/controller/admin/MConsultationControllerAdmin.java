package com.yhch.controller.admin;

import com.github.pagehelper.PageInfo;
import com.yhch.bean.PageResult;
import com.yhch.pojo.MConsultation;
import com.yhch.service.MConsultationService;
import com.yhch.service.PropertyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/admin/mConsultation")
public class MConsultationControllerAdmin {

    @Autowired
    private MConsultationService mConsultationService;

    @Autowired
    private PropertyService propertyService;


    /**
     * 根据会诊记录流水号（主键）查询会诊记录
     *
     * @param consultationId
     * @return
     */
    @RequestMapping("/searchMConsultation/{consultationId}")
    @ResponseBody
    public MConsultation getMConsultationByConsultationId(
            @PathVariable("consultationId") Integer consultationId) {
        MConsultation mConsultation = mConsultationService.queryById(consultationId);
        return mConsultation;
    }


    /**
     * 根据客户id号查询会诊记录
     *
     * @param memberId
     * @param pageNumber
     * @return
     */
    @RequestMapping("/mConsultationList/{memberId}/{pageNumber}")
    @ResponseBody
    public PageResult mConsultationList(
            @PathVariable("memberId") int memberId,
            @PathVariable("pageNumber") int pageNumber) {

        MConsultation record = new MConsultation();
        record.setId(memberId);
        PageInfo<MConsultation> mConsultationPageInfo = this.mConsultationService.queryPageListByWhere(pageNumber,
                this.propertyService.rows, record);

        return new PageResult(mConsultationPageInfo);
    }


    /**
     * 添加会诊记录
     *
     * @param mConsultation
     * @return
     */
    @RequestMapping("/addMConsultation")
    public String addMConsultation(MConsultation mConsultation) {

        mConsultationService.save(mConsultation);
        return "/mConsultation/mConsultationList";
    }

    /**
     * 根据会诊记录流水号删除会诊记录
     *
     * @param consultationId
     * @return
     */
    @RequestMapping("/deleteMConsultation/{deleteId}")
    public String deleteMConsultation(@PathVariable("deleteId") Integer consultationId) {

        mConsultationService.deleteById(consultationId);
        return "/mConsultation/mConsultationList";
    }

    /**
     * 更新会诊记录
     *
     * @param mConsultation
     * @return
     */
    @RequestMapping("/updateMConsultation")
    public String updateMConsultation(MConsultation mConsultation) {

        mConsultationService.updateSelective(mConsultation);

        return "/mConsultation/mConsultationList";
    }


    /**
     * 无条件分页显示所有会诊记录
     *
     * @param pageNumber
     * @return
     */
    @RequestMapping("/mConsultationList/{pageNumber}")
    @ResponseBody
    public PageResult mConsultationList(@PathVariable("pageNumber") Integer pageNumber) {

        PageInfo<MConsultation> mConsultationPageInfo = this.mConsultationService.queryPageListByWhere(pageNumber,
                this.propertyService.rows, null);

        return new PageResult(mConsultationPageInfo);
    }
}
