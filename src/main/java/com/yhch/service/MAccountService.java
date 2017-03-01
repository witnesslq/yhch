package com.yhch.service;

import com.github.abel533.entity.Example;
import com.yhch.mapper.MAccountMapper;
import com.yhch.pojo.MAccount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *MAccountService
 */
@Service
public class MAccountService extends BaseService<MAccount> {

    @Autowired
    private MAccountMapper mAccountMapper;


    /**
     * 查询余额
     * @param memberId
     * @return
     */
	public Map<String, Double> getMAccountBalance(int memberId) {

        Example example = new Example(MAccount.class);
        example.setOrderByClause("time DESC");

        List<MAccount> mAccountList = this.mAccountMapper.selectByExample(example);

        Double balance = mAccountList.get(0).getBalance();


        Map<String, Double> result = new HashMap<>(1);
		result.put("balance", balance);
		
		return result;
	}

}
