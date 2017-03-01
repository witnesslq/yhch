package com.yhch.controller.admin;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.yhch.pojo.hy.HyXxg;
import com.yhch.service.PropertyService;
import com.yhch.service.hy.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;

/**
 * 化验-心血管 controller
 *
 * @author zlren
 */
@Controller
@RequestMapping("/admin/hy")
public class TableHyControllerAdmin {

    @Autowired
    private PropertyService propertyService;

    private static final ObjectMapper OBJECT_MAPPER = new ObjectMapper();


    @Autowired
    private HyCrbService hyCrbService;

    @Autowired
    private HyFbjcwService hyFbjcwService;

    @Autowired
    private HyFsmyService hyFsmyService;

    @Autowired
    private HyGgjszService hyGgjszService;

    @Autowired
    private HyJzxdfmwService hyJzxdfmwService;

    @Autowired
    private HyNkfkService hyNkfkService;

    @Autowired
    private HySzmnService hySzmnService;

    @Autowired
    private HyTnbService hyTnbService;

    @Autowired
    private HyXxgService hyXxgService;

    @Autowired
    private HyXyxtService hyXyxtService;

    @Autowired
    private HyYjkService hyYjkService;

    @Autowired
    private HyZlService hyZlService;

    /**
     * 添加一条化验
     *
     * @return 主键
     */
    @RequestMapping("/{hy}/add")
    public ModelAndView addHyXxg(String jsonData) throws IOException {

        String resultPage = "/admin/hy/";

        switch (jsonData) {

            case "xxg": // 心血管
                HyXxg hyXxg = OBJECT_MAPPER.readValue(jsonData, HyXxg.class);
                this.hyXxgService.save(hyXxg);
                resultPage += "xxg";
                break;


            default:
                System.out.println("default");
        }

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName(resultPage);
        return modelAndView;
    }




//
//
//     @RequestMapping("/xxg/search/{pageNumber}")
//     @ResponseBody
//     public PageResult searchHyXxg(@PathVariable("pageNumber") int pageNumber) {
//
//         PageInfo<HyXxg> hyXxgPageInfo = this.hyXxgService.queryPageListByWhere(pageNumber, this.propertyService.rows,
//                 null);
//         return new PageResult(hyXxgPageInfo);
//     }
//
//     @RequestMapping("/xxg/search/{memberId}/{pageNumber}")
//     @ResponseBody
//     public PageResult searchHyXxgByMemberId(@PathVariable("memberId") int memberId, @PathVariable
//             ("pageNumber") int pageNumber) {
//
//         HyXxg record = new HyXxg();
//         record.setId(memberId);
//
//         PageInfo<HyXxg> hyXxgPageInfo = this.hyXxgService.queryPageListByWhere(pageNumber, this.propertyService.rows,
//                 record);
//         return new PageResult(hyXxgPageInfo);
//     }
//
//
//     //
// ***************************************************************************************************************
//     // 糖尿病
//
//
//     @RequestMapping("/tnb/add")
//     public ModelAndView add(HyTnb hyTnb) {
//         this.hyTnbService.save(hyTnb);
//
//         // 这个地方也许该返回modelandview
//         ModelAndView modelAndView = new ModelAndView();
//         modelAndView.setViewName("/admin/hy/tnb");
//         return modelAndView;
//     }
//
//
//     @RequestMapping("/tnb/search/{pageNumber}")
//     @ResponseBody
//     public PageResult searchHyTnb(@PathVariable("pageNumber") int pageNumber) {
//
//         PageInfo<HyTnb> hyTnbPageInfo = this.hyTnbService.queryPageListByWhere(pageNumber, this.propertyService.rows,
//                 null);
//         return new PageResult(hyTnbPageInfo);
//     }
//
//     @RequestMapping("/tnb/search/{memberId}/{pageNumber}")
//     @ResponseBody
//     public PageResult searchHyTnbByMemberId(@PathVariable("memberId") int memberId, @PathVariable
//             ("pageNumber") int pageNumber) {
//
//         return tableHyService.getHyTnbsByMemberIdByPage(memberId, pageNumber);
//     }
//
//
//     //
// ***************************************************************************************************************
//     // 腹部及肠胃
//     @RequestMapping("/fbjcw/add")
//     public ModelAndView add(HyFbjcw hyFbjcw) {
//         tableHyService.insert(hyFbjcw);
//
//         // 这个地方也许该返回modelandview
//         ModelAndView modelAndView = new ModelAndView();
//         modelAndView.setViewName("/admin/hy/fbjcw");
//         return modelAndView;
//     }
//
//
//     @RequestMapping("/fbjcw/search/{pageNumber}")
//     @ResponseBody
//     public PageResult searchHyFbjcw(@PathVariable("pageNumber") int pageNumber) {
//
//         return tableHyService.getHyFbjcwsByPage(pageNumber);
//     }
//
//     @RequestMapping("/fbjcw/search/{memberId}/{pageNumber}")
//     @ResponseBody
//     public PageResult searchHyFbjcwByMemberId(@PathVariable("memberId") int memberId, @PathVariable
//             ("pageNumber") int pageNumber) {
//
//         return tableHyService.getHyFbjcwsByMemberIdByPage(memberId, pageNumber);
//     }
//
//
//     //
// ***************************************************************************************************************
//     // 肾脏泌尿
//
//     @RequestMapping("/szmn/add")
//     public ModelAndView add(HySzmn hySzmn) {
//         tableHyService.insert(hySzmn);
//
//         // 这个地方也许该返回modelandview
//         ModelAndView modelAndView = new ModelAndView();
//         modelAndView.setViewName("/admin/hy/szmn");
//         return modelAndView;
//     }
//
//
//     @RequestMapping("/szmn/search/{pageNumber}")
//     @ResponseBody
//     public PageResult searchHySzmn(@PathVariable("pageNumber") int pageNumber) {
//
//         return tableHyService.getHySzmnsByPage(pageNumber);
//     }
//
//     @RequestMapping("/szmn/search/{memberId}/{pageNumber}")
//     @ResponseBody
//     public PageResult searchHySzmnByMemberId(@PathVariable("memberId") int memberId, @PathVariable
//             ("pageNumber") int pageNumber) {
//
//         return tableHyService.getHySzmnsByMemberIdByPage(memberId, pageNumber);
//     }
//
//
//     //
// ***************************************************************************************************************
//     // 男科妇科
//
//     @RequestMapping("/nkfk/add")
//     public ModelAndView add(HyNkfk hyNkfk) {
//         tableHyService.insert(hyNkfk);
//
//         // 这个地方也许该返回modelandview
//         ModelAndView modelAndView = new ModelAndView();
//         modelAndView.setViewName("/admin/hy/nkfk");
//         return modelAndView;
//     }
//
//
//     @RequestMapping("/nkfk/search/{pageNumber}")
//     @ResponseBody
//     public PageResult searchHyNkfk(@PathVariable("pageNumber") int pageNumber) {
//
//         return tableHyService.getHyNkfksByPage(pageNumber);
//     }
//
//     @RequestMapping("/nkfk/search/{memberId}/{pageNumber}")
//     @ResponseBody
//     public PageResult searchHyNkfkByMemberId(@PathVariable("memberId") int memberId, @PathVariable
//             ("pageNumber") int pageNumber) {
//
//         return tableHyService.getHyNkfksByMemberIdByPage(memberId, pageNumber);
//     }
//
//
//     //
// ***************************************************************************************************************
//     // 骨骼及四肢
//
//     @RequestMapping("/ggjsz/add")
//     public ModelAndView add(HyGgjsz hyGgjsz) {
//         tableHyService.insert(hyGgjsz);
//
//         // 这个地方也许该返回modelandview
//         ModelAndView modelAndView = new ModelAndView();
//         modelAndView.setViewName("/admin/hy/ggjsz");
//         return modelAndView;
//     }
//
//
//     @RequestMapping("/ggjsz/search/{pageNumber}")
//     @ResponseBody
//     public PageResult searchHyGgjsz(@PathVariable("pageNumber") int pageNumber) {
//
//         return tableHyService.getHyGgjszsByPage(pageNumber);
//     }
//
//     @RequestMapping("/ggjsz/search/{memberId}/{pageNumber}")
//     @ResponseBody
//     public PageResult searchHyGgjszByMemberId(@PathVariable("memberId") int memberId, @PathVariable
//             ("pageNumber") int pageNumber) {
//
//         return tableHyService.getHyGgjszsByMemberIdByPage(memberId, pageNumber);
//     }
//
//
//     //
// ***************************************************************************************************************
//     // 甲状腺等分泌物
//
//     @RequestMapping("/jzxdfmw/add")
//     public ModelAndView add(HyJzxdfmw hyJzxdfmw) {
//         tableHyService.insert(hyJzxdfmw);
//
//         // 这个地方也许该返回modelandview
//         ModelAndView modelAndView = new ModelAndView();
//         modelAndView.setViewName("/admin/hy/jzxdfmw");
//         return modelAndView;
//     }
//
//
//     @RequestMapping("/jzxdfmw/search/{pageNumber}")
//     @ResponseBody
//     public PageResult searchHyJzxdfmw(@PathVariable("pageNumber") int pageNumber) {
//
//         return tableHyService.getHyJzxdfmwsByPage(pageNumber);
//     }
//
//     @RequestMapping("/jzxdfmw/search/{memberId}/{pageNumber}")
//     @ResponseBody
//     public PageResult searchHyJzxdfmwByMemberId(@PathVariable("memberId") int memberId, @PathVariable
//             ("pageNumber") int pageNumber) {
//
//         return tableHyService.getHyJzxdfmwsByMemberIdByPage(memberId, pageNumber);
//     }
//
//
//     //
// ***************************************************************************************************************
//     // 肿瘤
//
//     /**
//      * 添加一条*的化验记录
//      *
//      * @param hyXxg 化验心血管数据
//      * @return 主键
//      */
//     @RequestMapping("/zl/add")
//     public ModelAndView add(HyZl hyZl) {
//         tableHyService.insert(hyZl);
//
//         // 这个地方也许该返回modelandview
//         ModelAndView modelAndView = new ModelAndView();
//         modelAndView.setViewName("/admin/hy/zl");
//         return modelAndView;
//     }
//
//
//     @RequestMapping("/zl/search/{pageNumber}")
//     @ResponseBody
//     public PageResult searchHyZl(@PathVariable("pageNumber") int pageNumber) {
//
//         return tableHyService.getHyZlsByPage(pageNumber);
//     }
//
//     @RequestMapping("/zl/search/{memberId}/{pageNumber}")
//     @ResponseBody
//     public PageResult searchHyZlByMemberId(@PathVariable("memberId") int memberId, @PathVariable
//             ("pageNumber") int pageNumber) {
//
//         return tableHyService.getHyZlsByMemberIdByPage(memberId, pageNumber);
//     }
//
//
//     //
// ***************************************************************************************************************
//     // 风湿免疫
//
//     @RequestMapping("/fsmy/add")
//     public ModelAndView add(HyFsmy hyFsmy) {
//         tableHyService.insert(hyFsmy);
//
//         // 这个地方也许该返回modelandview
//         ModelAndView modelAndView = new ModelAndView();
//         modelAndView.setViewName("/admin/hy/fsmy");
//         return modelAndView;
//     }
//
//
//     @RequestMapping("/fsmy/search/{pageNumber}")
//     @ResponseBody
//     public PageResult searchHyFsmy(@PathVariable("pageNumber") int pageNumber) {
//
//         return tableHyService.getHyFsmysByPage(pageNumber);
//     }
//
//     @RequestMapping("/fsmy/search/{memberId}/{pageNumber}")
//     @ResponseBody
//     public PageResult searchHyFsmyByMemberId(@PathVariable("memberId") int memberId, @PathVariable
//             ("pageNumber") int pageNumber) {
//
//         return tableHyService.getHyFsmysByMemberIdByPage(memberId, pageNumber);
//     }
//
//
//     //
// ***************************************************************************************************************
//     // 血液系统
//     @RequestMapping("/xyxt/add")
//     public ModelAndView add(HyXyxt hyXyxt) {
//         tableHyService.insert(hyXyxt);
//
//         // 这个地方也许该返回modelandview
//         ModelAndView modelAndView = new ModelAndView();
//         modelAndView.setViewName("/admin/hy/xyxt");
//         return modelAndView;
//     }
//
//
//     @RequestMapping("/xyxt/search/{pageNumber}")
//     @ResponseBody
//     public PageResult searchHyXyxt(@PathVariable("pageNumber") int pageNumber) {
//
//         return tableHyService.getHyXyxtsByPage(pageNumber);
//     }
//
//     @RequestMapping("/xyxt/search/{memberId}/{pageNumber}")
//     @ResponseBody
//     public PageResult searchHyXyxtByMemberId(@PathVariable("memberId") int memberId, @PathVariable
//             ("pageNumber") int pageNumber) {
//
//         return tableHyService.getHyXyxtsByMemberIdByPage(memberId, pageNumber);
//     }
//
//
//     //
// ***************************************************************************************************************
//     // 传染病
//
//     @RequestMapping("/crb/add")
//     public ModelAndView add(HyCrb hyCrb) {
//         tableHyService.insert(hyCrb);
//
//         // 这个地方也许该返回modelandview
//         ModelAndView modelAndView = new ModelAndView();
//         modelAndView.setViewName("/admin/hy/crb");
//         return modelAndView;
//     }
//
//
//     @RequestMapping("/crb/search/{pageNumber}")
//     @ResponseBody
//     public PageResult searchHyCrb(@PathVariable("pageNumber") int pageNumber) {
//
//         return tableHyService.getHyCrbsByPage(pageNumber);
//     }
//
//     @RequestMapping("/crb/search/{memberId}/{pageNumber}")
//     @ResponseBody
//     public PageResult searchHyCrbByMemberId(@PathVariable("memberId") int memberId, @PathVariable
//             ("pageNumber") int pageNumber) {
//
//         return tableHyService.getHyCrbsByMemberIdByPage(memberId, pageNumber);
//     }
//
//
//     //
// ***************************************************************************************************************
//     // 亚健康
//     @RequestMapping("/yjk/add")
//     public ModelAndView add(HyYjk hyYjk) {
//         tableHyService.insert(hyYjk);
//
//         // 这个地方也许该返回modelandview
//         ModelAndView modelAndView = new ModelAndView();
//         modelAndView.setViewName("/admin/hy/yjk");
//         return modelAndView;
//     }
//
//
//     @RequestMapping("/yjk/search/{pageNumber}")
//     @ResponseBody
//     public PageResult searchHyYjk(@PathVariable("pageNumber") int pageNumber) {
//
//         return tableHyService.getHyYjksByPage(pageNumber);
//     }
//
//     @RequestMapping("/yjk/search/{memberId}/{pageNumber}")
//     @ResponseBody
//     public PageResult searchHyYjkByMemberId(@PathVariable("memberId") int memberId, @PathVariable("pageNumber") int
//             pageNumber) {
//
//         return tableHyService.getHyYjksByMemberIdByPage(memberId, pageNumber);
//     }

}
