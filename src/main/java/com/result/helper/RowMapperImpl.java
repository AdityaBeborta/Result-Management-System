package com.result.helper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.result.entity.Students;

public class RowMapperImpl implements RowMapper<Students>   {

	@Override
	public Students mapRow(ResultSet rs, int rowNum) throws SQLException {
		String reg=rs.getString(1);
		String name=rs.getString(2);
		String sem=rs.getString(3);
		String subject_code=rs.getString(4);
		String subject_name=rs.getString(5);
		String subject_type=rs.getString(6);
		String subject_credit=rs.getString(7);
		String subject_grade=rs.getString(8);
		Students s=new Students(reg, name, sem, subject_code, subject_name, subject_type, subject_credit, subject_grade);
		return s;
	}

}
