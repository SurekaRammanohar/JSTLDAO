package com.cognizant.dao;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;
import java.util.ArrayList;
import java.util.*;
import com.cognizant.bean.Departmant;

public class DepartmentDAO {

	public static Connection connect() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=null;
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
		return conn;
	}
	public int insert(Departmant dept)throws Exception {
		Connection conn=connect();
		PreparedStatement pstmt=conn.prepareStatement("insert into department (dept_name,start_date)values(?,?)");
		//pstmt.setInt(1, dept.getDeptId());
		pstmt.setString(1, dept.getDeptName());
		pstmt.setString(2, dept.getStartDate());
			//	pstmt.setDate(2,dept.getStartDate());

	int status=0;
	status=pstmt.executeUpdate();
	
		return status;	
	}
	public int update(Departmant dept)throws Exception {
		Connection conn=connect();
		PreparedStatement pstmt=conn.prepareStatement("update department set dept_name=?,start_date=? where dept_id=?");
		pstmt.setInt(3, dept.getDeptId());
		pstmt.setString(1, dept.getDeptName());
		pstmt.setString(2,dept.getStartDate());
	
	int status=0;
	status=pstmt.executeUpdate();
	
		return status;	
		
	}
	public int delete(int deptId)throws Exception {
	Connection conn=connect();
	Statement stmt=conn.createStatement();
	int status=0;
	status=stmt.executeUpdate("delete from department where dept_id="+deptId);
			return status;
	}
	public List<Departmant> read(int deptId)throws Exception {
		Connection conn=connect();
		List<Departmant> empList=new ArrayList<Departmant>();
		Statement stmt=conn.createStatement();
		int status=0;
		ResultSet rs=stmt.executeQuery("select * from department where dept_id="+deptId);
		Departmant dept=new Departmant();

		while(rs.next()) {
			dept.setDeptId(rs.getInt(1));
			dept.setDeptName(rs.getString(2));
			dept.setStartDate(rs.getString(3));
			empList.add(dept);
		}
		return empList;
	}
	public List<Departmant> readAll()throws Exception{
		
		List<Departmant> empList=new ArrayList<Departmant>();
		Connection conn=connect();
		Statement stmt=conn.createStatement();
		int status=0;
		ResultSet rs=stmt.executeQuery("select * from department ");
	
		while(rs.next()) {
			Departmant emp=new Departmant();
			emp.setDeptId(rs.getInt(1));
			emp.setDeptName(rs.getString(2));
			emp.setStartDate(rs.getString(3));
			
		empList.add(emp);
		}
		return empList;
	}
}
