package com.minds.servo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minds.servo.dao.OrganizationDAO;
import com.minds.servo.iservice.OrganizationService;
import com.minds.servo.model.Organization;

@Service
public class OrganizationServiceImpl implements OrganizationService{
	
	@Autowired	private OrganizationDAO organizationDAO;

	
	public void insertOrganization(Organization org) {
		
		organizationDAO.insertOrganization(org);
		
		
	}
	
	public Organization getOrganizationByName(String name){
		
		Organization organization = organizationDAO.getOrganizationByName(name);
		return organization;
	}

}
