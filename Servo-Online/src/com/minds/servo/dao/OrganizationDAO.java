package com.minds.servo.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.springframework.stereotype.Component;

import com.minds.servo.model.Organization;

@Component("organizationDAO")
public interface OrganizationDAO {
	
	public String INSERT_INTO_ORGANIZATION = "INSERT INTO ORGANIZATION (id, name, address, phone, location, createdtime, lastupdatedtime)"
              + " VALUES (#{id}, #{name}, #{address}, #{phone}, #{location}, #{createdtime}, #{lastupdatedtime})";
	@Insert(INSERT_INTO_ORGANIZATION)
	/*@SelectKey(statement="select uuid() as id", keyProperty="id", before=true, resultType=String.class)
	@Options(useGeneratedKeys = true, keyProperty="id")*/
	public void insertOrganization(Organization org);
	
	
	@Select("SELECT * FROM ORGANIZATION org WHERE org.name = #{name}")
	@Results({
		@Result(property = "id", column = "id"),
		@Result(property = "name", column = "name"),
		@Result(property = "address", column = "address"),
		@Result(property = "phone", column = "phone"),
		@Result(property = "location", column = "location"),
		@Result(property = "createdtime", column = "createdtime"),
		@Result(property = "lastupdatedtime", column = "lastupdatedtime")
	})
	public Organization getOrganizationByName(String name);

}
