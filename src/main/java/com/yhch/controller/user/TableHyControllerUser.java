package com.yhch.controller.user;

import com.github.pagehelper.PageInfo;
import com.yhch.bean.PageResult;
import com.yhch.pojo.User;
import com.yhch.pojo.hy.HyXxg;
import com.yhch.service.PropertyService;
import com.yhch.service.hy.HyXxgService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 化验-心血管 controller
 */
@Controller
@RequestMapping("/user/hy")
public class TableHyControllerUser {

    @Autowired
    private PropertyService propertyService;


    @Autowired
    private HyXxgService hyXxgService;

//	/**添加一条心血管的化验记录
//	 * @param hyXxg 化验心血管数据
//	 * @return 主键
//	 */
//	@RequestMapping("/add")
//	public String addHyXxg(HyXxg hyXxg) {
//		hyXxgService.insert(hyXxg);
//		int id = hyXxg.getId();
//		// 这个地方也许该返回modelandview
//		ModelAndView modelAndView = new ModelAndView();
//		return "xxxxxxxxxxxx";
//	}


    @RequestMapping("/xxg/search/{pageNumber}")
    @ResponseBody
    public PageResult searchexpert(@PathVariable("pageNumber") int pageNumber) {

        User activeUser = (User) SecurityUtils.getSubject().getPrincipal();
        int memberId = activeUser.getId();

        HyXxg record = new HyXxg();
        record.setMemberid(memberId);

        PageInfo<HyXxg> hyXxgPageInfo = this.hyXxgService.queryPageListByWhere(pageNumber, this.propertyService.rows,
                record);

        return new PageResult(hyXxgPageInfo);
    }

}
