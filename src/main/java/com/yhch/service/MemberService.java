package com.yhch.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yhch.mapper.MemberMapper;
import com.yhch.pojo.Expert;
import com.yhch.pojo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * MemberService
 */
@Service
public class MemberService extends BaseService<Member> {

    @Autowired
    private MemberMapper memberMapper;

    /**
     *
     * @param page
     * @param rows
     * @param name
     * @return
     */
    public PageInfo<Member> queryPageListByName(Integer page, Integer rows, String name) {

        String searchText = "%" + name + "%";

        Example example = new Example(Expert.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andLike(name, searchText);

        PageHelper.startPage(page, rows);

        List<Member> expertList = this.memberMapper.selectByExample(example);

        return new PageInfo<>(expertList);
    }

    /**
     *
     * @param name
     * @return
     */
    public int getMemberIdByName(String name) {
        Member record = new Member();
        record.setName(name);
        Member member = super.queryOne(record);

        return member.getId();
    }
}
