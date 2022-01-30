/**
 * Created by 土豆烧排骨
 * 2022/1/18 下午 11:15
 */


package com.survey.service.impl;

import com.survey.common.Dbutils;
import com.survey.dao.FirstTitleMapper;
import com.survey.entity.FirstTitle;
import com.survey.service.FirstTitleService;
import org.junit.Test;

import java.util.List;

public class FirstTitleServiceImpl implements FirstTitleService {
    //通过static代码块获取对应的mapper
    private static FirstTitleMapper firstTitleMapper;
    static {
        firstTitleMapper= Dbutils.getSqlSession().getMapper(FirstTitleMapper.class);
    }

    /**
     * 首页展示 FirstTitle
     *
     * @param eid evaluate传来的id
     * @return
     */

    @Override
    public List<FirstTitle> listFirstTitle(Integer eid) {
        List<FirstTitle> firstTitles = firstTitleMapper.selectFirstTitleByEid(1);
        return firstTitles;
    }
}
