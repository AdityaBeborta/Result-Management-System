package com.result.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.result.entity.Students;
import com.result.helper.RowMapperImpl;

@Component
public class UserRepo {
	@Autowired
	JdbcTemplate jt;

	public List<Students> getStudentByReg(String reg) {

		String query = "select * from student where R=?";
		List<Students> student = jt.query(query, new RowMapperImpl(), reg);
		return student;

	}
//	public String insertData(List<Students> s) {
//		
//		Iterator<Students> iterator = s.iterator();
//		int count = 0;
//		while(iterator.hasNext()) {
//			Students s1 = iterator.next();
//			count++;
//			String q="insert into student values (?,?,?,?,?,?,?,?)";
//			int update = jt.update(q,s1.getRegno(),s1.getName(),s1.getSem(),s1.getSubject_code(),s1.getName(),s1.getSubject_type(),s1.getSubject_credit(),s1.getSubject_grade());
//			if(update>1) {
//				return "done";
//			}
//			
//			
//			
//		}
//		System.out.println(count);
//		return "fail";
//		
//	
//	}

}
