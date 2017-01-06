package com.duke.inovice.domain;

import java.util.HashMap;
import java.util.List;

public class Invoice {
    private Customer customer;
    private Business business;
    private Technician technisian;
    private Contract contract;
    
    private HashMap<Service, Double> serviceoffered;
    private byte[] customerSignature;
    private byte[] businessSignature;
    
    
	public Technician getTechnisian() {
		return technisian;
	}
	public void setTechnisian(Technician technisian) {
		this.technisian = technisian;
	}
	public byte[] getCustomerSignature() {
		return customerSignature;
	}
	public void setCustomerSignature(byte[] customerSignature) {
		this.customerSignature = customerSignature;
	}
	public byte[] getBusinessSignature() {
		return businessSignature;
	}
	public void setBusinessSignature(byte[] businessSignature) {
		this.businessSignature = businessSignature;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public Business getBusiness() {
		return business;
	}
	public void setBusiness(Business business) {
		this.business = business;
	}
	public HashMap<Service, Double> getServiceoffered() {
		return serviceoffered;
	}
	public void setServiceoffered(HashMap<Service, Double> serviceoffered) {
		this.serviceoffered = serviceoffered;
	}
    
    
    
    
	
}
