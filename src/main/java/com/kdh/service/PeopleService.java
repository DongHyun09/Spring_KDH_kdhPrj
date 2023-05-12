package com.kdh.service;

import java.util.List;

import com.kdh.entity.People;

public interface PeopleService {
	
	List<People> findAll();
	int insertThem(People p);
	Integer getNum();
}