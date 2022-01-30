/**
 * Created by 土豆烧排骨
 * 2022/1/18 下午 11:13
 */


package com.survey.service;

import com.survey.entity.FirstTitle;

import java.util.List;

public interface FirstTitleService {
    /**
     * 首页展示 FirstTitle
     * @param eid evaluate传来的id
     * @return
     */
    List<FirstTitle> listFirstTitle(Integer eid);
}
