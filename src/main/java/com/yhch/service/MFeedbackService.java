package com.yhch.service;

import com.github.abel533.entity.Example;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yhch.mapper.MFeedbackMapper;
import com.yhch.pojo.Expert;
import com.yhch.pojo.MFeedback;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 用户反馈记录service
 */
@Service
public class MFeedbackService extends BaseService<MFeedback> {

    @Autowired
    private MFeedbackMapper mFeedbackMapper;


    /**
     * 根据id模糊匹配
     *
     * @param page
     * @param rows
     * @param id
     * @return
     */
    public PageInfo<MFeedback> queryPageListByIdOne(Integer page, Integer rows, int id) {


        String searchText = "%" + id + "%";

        Example example = new Example(Expert.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andLike("id", searchText);

        PageHelper.startPage(page, rows);

        List<MFeedback> mFeedbackList = this.mFeedbackMapper.selectByExample(example);

        return new PageInfo<>(mFeedbackList);
    }

}
