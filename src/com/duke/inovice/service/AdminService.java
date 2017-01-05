package com.duke.inovice.service;

import com.duke.inovice.domain.Business;

public interface AdminService {

	/**
	 * Register the business.
	 * @param business
	 * @throws Exception
	 */
	public void registerBusiness(Business business) throws Exception;
	
	/**
	 * Sends monthly statments to all business user about the activity of the month.
	 * @throws Exception
	 */
	public void sendMonthlyStatments() throws Exception;
	
	
	
	
}
