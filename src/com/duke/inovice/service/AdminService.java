package com.duke.inovice.service;

import com.duke.inovice.domain.Business;
import com.duke.inovice.domain.Contract;
import com.duke.inovice.domain.EmailTemplate;

public interface AdminService {
	
	
	/**
	 * Register the business.
	 * @param business
	 * @throws Exception
	 */
	public void registerBusiness(String username, String password, String company) throws Exception;
	
	/**
	 * Sends monthly statments to all business user about the activity of the month.
	 * @throws Exception
	 */
	public void sendMonthlyStatments() throws Exception;
	
	/**
	 * get the business detail.
	 * @param business
	 * @throws Exception
	 */
	public Business getBusinessDetail(String businessEmail) throws Exception;
	
	/*
	 * Edit the business detail.
	 */
	public void editBusinessDetail(Business business) throws Exception;
	
	/**
	 * Edit the tempate for business contract details.
	 * @param businessEmail
	 * @param contract
	 * @throws Exception
	 */
	public void editBusinessContractTemplate(String businessEmail , Contract contract) throws Exception;
	
	/**
	 * Update the email template
	 * @param businessEmail
	 * @param emailTemplate
	 * @throws Exception
	 */
	public void editBusinessEmailTemplate(String businessEmail, EmailTemplate emailTemplate) throws Exception;
	
	/**
	 * Add/edit the tax types for business.
	 * @param businessEmail
	 * @param taxType
	 * @param value
	 * @throws Exception
	 */
	public void editBusinessTaxTemplate(String businessEmail, String taxType, String value) throws Exception;
	
	
	
}
