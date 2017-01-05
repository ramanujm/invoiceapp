package com.duke.inovice.domain;

import java.util.HashMap;
import java.util.List;

public class Invoice {
    private Customer customer;
    private Business business;
    
    private HashMap<Service, Double> serviceoffered;
    
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
