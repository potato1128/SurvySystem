package com.survey.dao;

import com.survey.entity.FirstTitle;

import java.util.List;

public interface FirstTitleMapper {
    List<FirstTitle> selectFirstTitleByEid(Integer eId);
}
