package com.study.study_springboots.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
@Component
public class CommonCodeDao {
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public Object getList() {
        String statement = "CommonCode.selectFromCIP_COMMON_CODEByCOMMON_CODE_ID";
        Map parameter = new HashMap();
        parameter.put("COMMON_CODE_ID", "No");
        Object resultset = sqlSessionTemplate.selectList(statement, parameter);
        return resultset;
    }
}
