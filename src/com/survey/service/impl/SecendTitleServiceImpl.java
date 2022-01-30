/**
 * Created by 土豆烧排骨
 * 2022/1/18 下午 11:15
 */


package com.survey.service.impl;

import com.survey.common.Dbutils;
import com.survey.dao.SecendTitleMapper;
import com.survey.entity.SecendTitle;
import com.survey.service.SecendTitleService;

import java.util.List;

public
class SecendTitleServiceImpl implements SecendTitleService {
    private  static SecendTitleMapper secendTitleMapper;
    static {
        secendTitleMapper= Dbutils.getSqlSession().getMapper(SecendTitleMapper.class);
    }
    @Override
    public List<SecendTitle> listSecendTitle(Integer fid) {
     return   secendTitleMapper.selectSecendTitleByFid(fid);
    }

}
