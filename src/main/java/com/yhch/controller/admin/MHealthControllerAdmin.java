package com.yhch.controller.admin;

import com.github.pagehelper.PageInfo;
import com.yhch.bean.PageResult;
import com.yhch.pojo.MHealth;
import com.yhch.service.MHealthService;
import com.yhch.service.PropertyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/admin/mHealth")
public class MHealthControllerAdmin {

    @Autowired
    private PropertyService propertyService;

    @Autowired
    private MHealthService mHealthService;

    /**
     * 根据客户id号查询客户健康信息
     * 一个客户的健康信息只有一条，不断更新
     *
     * @param id
     * @return
     */
    @RequestMapping("/searchMHealth")
    @ResponseBody
    public MHealth getMHealth(Integer id) {
        MHealth record = new MHealth();
        record.setId(id);

        MHealth mHealth = this.mHealthService.queryOne(record);
        return mHealth;
    }

    /**
     * 添加健康摘要记录
     *
     * @param mHealth
     * @return
     */
    @RequestMapping("/addMHealth")
    public String addMHealth(MHealth mHealth) {

        mHealthService.save(mHealth);
        return "/mHealth/mHealthList";
    }

    /**
     * 根据健康摘要序号删除反馈记录
     *
     * @param id
     * @return
     */
    @RequestMapping("/deleteMHealth/{deleteId}")
    public String deleteMHealth(@PathVariable("deleteId") Integer id) {

        mHealthService.deleteById(id);
        return "/mHealth/mHealthList";
    }

    /**
     * 更新健康摘要记录
     *
     * @param mHealth
     * @return
     */
    @RequestMapping("/updateMHealth")
    public String updateMHealth(MHealth mHealth) {

        mHealthService.updateSelective(mHealth);

        return "/mHealth/mHealthList";
    }


    /**
     * 无条件分页显示所有健康摘要记录
     *
     * @param pageNumber
     * @return
     */
    @RequestMapping("/mHealthList/{pageNumber}")
    @ResponseBody
    public PageResult mHealthList(@PathVariable("pageNumber") Integer pageNumber) {

        PageInfo<MHealth> mHealthPageInfo = this.mHealthService.queryPageListByWhere(pageNumber, this.propertyService
                .rows, null);

        return new PageResult(mHealthPageInfo);
    }
}
