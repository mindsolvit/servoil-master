package com.minds.servo.test;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.List;

import org.joda.time.DateTime;
import org.joda.time.DateTimeZone;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.minds.servo.iservice.OrganizationService;
import com.minds.servo.iservice.ProductService;
import com.minds.servo.iservice.UserService;
import com.minds.servo.model.Organization;
import com.minds.servo.model.Product;
import com.minds.servo.model.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:servlet-context.xml" })
public class UserTest {

       @Autowired private UserService userService;
       @Autowired private OrganizationService organizationService;
       @Autowired private ProductService productService;

       
       @Test
       public void testProdcut(){
   		
   		List<Product> productList = productService.getAllProducts();
   		System.out.println("list size = " + productList.size());
   		
   	}
       
       
       //@Test
       public void testUserImpl() throws Exception {

    	Organization org = new Organization();
    	org.setId("mm-dse1");
    	org.setName("Minds");
    	org.setLocation("Gulbarga");
    	org.setPhone("08472");
    	org.setAddress("Opp high court gulbarga");
    	org.setCreatedtime(new Timestamp(Calendar.getInstance().getTime().getTime()));
    	org.setLastupdatedtime(new Timestamp(Calendar.getInstance().getTime().getTime()));
    	
    	organizationService.insertOrganization(org);
    	
    	
    	org = organizationService.getOrganizationByName("Minds");
   		
    	   
    	   
    	User dummyUser = new User();
   		dummyUser.setId("uu-mm-ur1");
   	//	dummyUser.setFirstName("Sohail");
   	//	dummyUser.setMiddleName("A");
   	//	dummyUser.setLastName("R");
   	//	dummyUser.setEmailId("sohail@gmail.com");
   	//	dummyUser.setPassword("1qaz!QAZ");
   		dummyUser.setPassword("76116462454");
   	//	dummyUser.setMobile("986897687");
   		dummyUser.setUsertype("1");
   		dummyUser.setCreatedtime(new Timestamp(Calendar.getInstance().getTime().getTime()));   		
   		dummyUser.setLastupdatedtime(new Timestamp(Calendar.getInstance().getTime().getTime()));
   		dummyUser.setOrgid_fk(org.getId());
   		//dummyUser.setOrgId_fk(orgId_fk);
   	//	dummyUser.setAddress("GLB");

   		userService.insertUser(dummyUser);
        System.out.println("Records successfully processed");
       }
}
