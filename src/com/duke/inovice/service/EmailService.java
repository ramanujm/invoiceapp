package com.duke.inovice.service;

public interface EmailService {
    
	/**
	 * sends the email with attachements bytes 
	 * @param from
	 * @param to
	 * @param attachement
	 */
	public void sendEmail(String from, String[] to , byte[] attachement);
	
}
