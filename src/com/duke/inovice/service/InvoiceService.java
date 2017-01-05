package com.duke.inovice.service;

import com.duke.inovice.domain.Invoice;

public interface InvoiceService {
   /**
    * Genrate the PDF byes based on the invoice Details and saved them into database for future view.
    * @param invoice
    * @return
    * @throws Exception
    */
	public byte[] prepareInvoice(Invoice invoice) throws Exception;
	
	/**
	 * sends the invoice to customer using email notification. Also , logs the time stamp into system. for monthyl reporting.
	 * @param invoice
	 * @param content
	 * @throws Exception
	 */
	public void sendInvoice(Invoice invoice) throws Exception;
	
	
	
	
}
