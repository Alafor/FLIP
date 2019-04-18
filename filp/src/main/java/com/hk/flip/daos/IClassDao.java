package com.hk.flip.daos;

import java.util.List;

import com.hk.flip.dtos.ClassDto;
//메인 강의목록
public interface IClassDao {
	
	public List<ClassDto> mainClassList(String department);
	
	public List<ClassDto> mainStudyList(String department);
	
	public List<ClassDto> mainWantList(String department);
	//강의 상세보기
	public List<ClassDto> getCdetail(int class_seq);
}
