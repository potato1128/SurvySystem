package com.survey.dao;

import com.survey.entity.SecendTitle;

import java.util.List;

public interface SecendTitleMapper {
    List<SecendTitle> selectSecendTitleByFid(Integer fid);
}
