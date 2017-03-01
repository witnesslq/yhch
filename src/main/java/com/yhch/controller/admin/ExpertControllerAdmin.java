package com.yhch.controller.admin;

import com.github.pagehelper.PageInfo;
import com.yhch.bean.PageResult;
import com.yhch.pojo.Expert;
import com.yhch.service.ExpertService;
import com.yhch.service.PropertyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * ExpertControllerAdmin
 */
@Controller
@RequestMapping("/admin/expert")
public class ExpertControllerAdmin {

    @Autowired
    private ExpertService expertService;

    @Autowired
    private PropertyService propertyService;


    /**
     * 添加专家
     *
     * @param expert
     * @return
     */
    @RequestMapping("/addExpert")
    public String addExpert(Expert expert) {
        this.expertService.save(expert);
        return "/admin/expert/expertList";
    }

    /**
     * 根据专家id删除专家
     *
     * @param id
     * @return
     */
    @RequestMapping("/deleteExpert/{deleteId}")
    public String deleteExpert(@PathVariable("deleteId") Integer id) {
        expertService.deleteById(id);
        return "/admin/expert/expertList";
    }

    /**
     * 更新专家
     *
     * @param expert
     * @return
     */
    @RequestMapping("/updateExpert")
    public String updateExpert(Expert expert) {
        expertService.updateSelective(expert);
        return "/admin/expert/expertList";
    }


    /**
     * 查询第n页专家信息
     *
     * @param pageNumber
     * @return
     */
    @RequestMapping("/expertList/{pageNumber}")
    @ResponseBody
    public PageResult expertList(@PathVariable("pageNumber") Integer pageNumber) {

        PageInfo<Expert> expertPageInfo = expertService.queryPageListByWhere(pageNumber, this.propertyService.rows, null);
        PageResult pageResult = new PageResult(expertPageInfo);

        return pageResult;
    }

    /**
     * 根据姓名查询专家
     *
     * @param name
     * @param pageNumber
     * @return
     */
    @RequestMapping("/searchexpert/{expertName}/{pageNumber}")
    @ResponseBody
    public PageResult searchExpert(@PathVariable("expertName") String name, @PathVariable("pageNumber") int
            pageNumber) {

        PageInfo<Expert> expertPageInfo = expertService.queryPageListByName(pageNumber, this.propertyService.rows, name);
        PageResult pageResult = new PageResult(expertPageInfo);
        return pageResult;
    }

}
