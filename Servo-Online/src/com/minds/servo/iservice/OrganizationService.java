package com.minds.servo.iservice;

import org.springframework.stereotype.Component;

import com.minds.servo.model.Organization;

@Component
public interface OrganizationService {

	public void insertOrganization(Organization org);
	public Organization getOrganizationByName(String name);
}
