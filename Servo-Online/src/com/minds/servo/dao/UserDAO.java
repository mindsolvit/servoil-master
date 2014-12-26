package com.minds.servo.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.springframework.stereotype.Component;

import com.minds.servo.model.User;
import com.minds.servo.model.UserType;

@Component("userDAO")
public interface UserDAO {

	public String INSERT_INTO_USER = "INSERT INTO USER (id, firstname, middlename, lastname, emailid, password, phone, mobile ,"
            + " address, usertype, createdtime, lastupdatedtime,orgid_fk ) VALUES "
            + "(#{id}, #{firstname}, #{middlename}, #{lastname}, #{emailid}, #{password}, #{phone}, #{mobile},"
            + " #{address},#{usertype}, #{createdtime}, #{lastupdatedtime}, #{orgid_fk})";
	@Insert(INSERT_INTO_USER)
    @SelectKey(statement="select uuid() as id", keyProperty="id", before=true, resultType=String.class)
	@Options(useGeneratedKeys = true, keyProperty = "id", flushCache=true)
	public void insertUser(User user);

	/*Query to select the User Name by ID*/ 
	 @Select("SELECT * FROM USER WHERE USER.userId = #{userID}")
		@Results({
		     @Result(property = "userID", column = "id")
		})
	public User getUserById(String id);
	 
	 /*Query to select the User Name by Name*/
	 @Select("SELECT * FROM USER WHERE USER.firstName = #{firstName}")
		@Results({
		     @Result(property = "firstName", column = "firstName")		     
		})
	public User getUserByName(String userName);

	 /*Query to select the User Name by Email ID*/
	 @Select("SELECT * FROM USER WHERE emailid = #{emailId}")
		@Results({
			@Result(property = "id", column = "id"),
			@Result(property = "firstname", column = "firstname"),
			@Result(property = "password", column = "password"),
			@Result(property = "emailid", column = "emailid")
		     
		})
	public User getUserByemailId(String emailId);
	 
	 
	 @Select("SELECT * FROM USERTYPE WHERE role = #{role}")
		@Results({
		     @Result(property = "id", column = "id"),
		     @Result(property = "role", column = "role")
		})
	 public UserType getUserTypeByRole(String role);
	
}
