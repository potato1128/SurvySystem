/**
 * Created by 土豆烧排骨
 * 2022/1/18 下午 11:28
 */


package com.survey.common;

import com.github.pagehelper.util.StringUtil;

public class TypeUtils {
    //将字符串类型转换成int类型
    public static int toInt(String str){
        if(StringUtil.isEmpty(str)){
            return 0;
        }
     return  Integer.parseInt(str);
    }
}
