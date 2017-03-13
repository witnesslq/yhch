package com.yhch.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yhch.mapper.ExpertMapper;
import com.yhch.pojo.Expert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * 专家service
 */
@Service
public class ExpertService extends BaseService<Expert> {

    @Autowired
    private ExpertMapper expertMapper;


    /**
     * 根据姓名模糊搜索
     * @param page
     * @param rows
     * @param name
     * @return
     */
    public PageInfo<Expert> queryPageListByName(Integer page, Integer rows, String name) {

        String searchText = "%" + name + "%";

        Example example = new Example(Expert.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andLike("name", searchText);

        PageHelper.startPage(page, rows);

        List<Expert> expertList = this.expertMapper.selectByExample(example);

        return new PageInfo<>(expertList);
    }
}
