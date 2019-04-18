package com.hk.flip.daos;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.flip.dtos.ClassDto;

@Repository
public class ClassDao implements IClassDao {

	@Autowired
	private SqlSessionTemplate sqlsession;
	
	String nameSpace = "com.hk.flip.Class.";
	
	public ClassDao() {
		
	}
	
	//메인 강의목록
	@Override
	public List<ClassDto> mainClassList(String department){
		return sqlsession.selectList(nameSpace+"mainclasslist", department);
	}
	
	@Override
	public List<ClassDto> mainStudyList(String department){
		return sqlsession.selectList(nameSpace+"mainstudylist",department);
	}
	@Override
	public List<ClassDto> mainWantList(String department){
		return sqlsession.selectList(nameSpace+"mainwantlist",department);
	}
	
	//강사들의 강의 상세보기 페이지
	@Override
	public List<ClassDto> getCdetail(int class_seq){
		return sqlsession.selectList(nameSpace+"getCdetail", class_seq);
	}
	
}
