package com.kdh.service.jdbc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.kdh.entity.People;
import com.kdh.service.PeopleService;

@Service
public class Jdbc implements PeopleService {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
//	@Override
//	public int insertThem(People p) {
//		String insert = "insert into human_tbl values(?,?,?,?,?,?,?)";
//		Object[] put = {p.getName(),p.getAge(),p.getJob(),p.getRelation(),p.getForme(),p.getForm2(),p.getDv()};
//		int add = jdbcTemplate.update(insert, put);
//		return add;
//	}
//	
	@Override
	public List<People> findAll() {
		String sql = "select * from human_tbl";		
		List<People> list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(People.class));
		
		return list;
	}

}