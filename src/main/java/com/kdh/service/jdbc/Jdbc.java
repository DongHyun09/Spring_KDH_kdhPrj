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
	
	@Override
	public int updatePeople(People p) {
	    String update = "update human_tbl set name = ?, age = ?, job = ?, relation = ?, forme = ?, forme2 = ?, dv = ? where num = ?";
	    Object[] params = {p.getName(), p.getAge(), p.getJob(), p.getRelation(), p.getForme(), p.getForme2(), p.getDv(), p.getNum()};
	    int updat = jdbcTemplate.update(update, params);
	    return updat;
	}
	
	@Override
    public People findByNum(int num) {
        String sql = "select * from dv_view where num = ?";
        Object[] numb = { num };
        People people = jdbcTemplate.queryForObject(sql, numb, new BeanPropertyRowMapper<>(People.class));
        return people;
    }
	
	@Override
	public int insertThem(People p) {
		
		String insert = "insert into human_tbl values(?,?,?,?,?,?,?,?)";
		Object[] put = {p.getName(),p.getAge(),p.getJob(),p.getRelation(),p.getForme(),p.getForme2(),p.getDv(),p.getNum()};
		int add = jdbcTemplate.update(insert, put);		
		return add;
	}
	
	@Override
	public Integer getNum() {
	    String sql = "select max(num) from human_tbl";
	    int num = jdbcTemplate.queryForObject(sql, int.class);
	    return num;
	}
	
	@Override
	public List<People> findAll() {
		String sql = "select * from dv_view";		
		List<People> list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(People.class));
		
		return list;
	}

}