package com.yhch.controller.admin;

import com.github.pagehelper.PageInfo;
import com.yhch.bean.PageResult;
import com.yhch.pojo.MAccount;
import com.yhch.service.MAccountService;
import com.yhch.service.PropertyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * MAccountControllerAdmin
 */
@Controller
@RequestMapping("/admin/mAccount")
public class MAccountControllerAdmin {

    @Autowired
    private MAccountService mAccountService;

    @Autowired
    private PropertyService propertyService;

    /**
     * 根据账户流水号（主键）查询账户消费记录
     *
     * @param accountId
     * @return
     */
    @RequestMapping("/searchMAccount/{accountId}")
    @ResponseBody
    public MAccount getMAccountByAccountId(@PathVariable("accountId") Integer accountId) {
        MAccount mAccount = mAccountService.queryById(accountId);
        return mAccount;
    }

    /**
     * 根据客户id号查询账户消费记录
     *
     * @param memberId
     * @param pageNumber
     * @return
     */
    @RequestMapping("/searchMAccount/{memberId}/{pageNumber}")
    @ResponseBody
    public PageResult getMAccount(@PathVariable("memberId") Integer memberId,
                                  @PathVariable("pageNumber") Integer pageNumber) {

        MAccount record = new MAccount();
        record.setId(memberId);
        PageInfo<MAccount> mAccountPageInfo = this.mAccountService.queryPageListByWhere(pageNumber, propertyService
                .rows, record);

        return new PageResult(mAccountPageInfo);
    }

    /**
     * 添加账户消费记录
     *
     * @param mAccount
     * @return
     */
    @RequestMapping("/addMAccount")
    public String addMAccount(MAccount mAccount) {

        mAccountService.save(mAccount);
        return "/mAccount/mAccountList";
    }

    /**
     * 根据账户消费记录流水号删除消费记录
     *
     * @param accountId
     * @return
     */
    @RequestMapping("/deleteMAccount/{deleteId}")
    public String deleteMAccount(@PathVariable("deleteId") Integer accountId) {

        mAccountService.deleteById(accountId);
        return "/mAccount/mAccountList";
    }

    /**
     * 更新账户消费记录
     *
     * @param mAccount
     * @return
     */
    @RequestMapping("/updateMAccount")
    public String updateMAccount(MAccount mAccount) {

        mAccountService.updateSelective(mAccount);

        return "/mAccount/mAccountList";
    }

    /**
     * 无条件分页显示所有账户消费记录
     *
     * @param pageNumber
     * @return
     */
    @RequestMapping("/mAccountList/{pageNumber}")
    @ResponseBody
    public PageResult mAccountList(@PathVariable("pageNumber") Integer pageNumber) {

        PageInfo<MAccount> mAccountPageInfo = mAccountService.queryPageListByWhere(pageNumber,
                this.propertyService.rows, null);

        return new PageResult(mAccountPageInfo);
    }
}
