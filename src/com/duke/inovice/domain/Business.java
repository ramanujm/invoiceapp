package com.duke.inovice.domain;

import java.util.List;

public class Business {

	private String name;
	private Address address;
	private Contractor contactPerson;
    private List<Customer> customers;
    private String contactEmail;
    private String phone;
    private List<Service> services;
    private Login login;
    
    
    
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public Contractor getContactPerson() {
		return contactPerson;
	}
	public void setContactPerson(Contractor contactPerson) {
		this.contactPerson = contactPerson;
	}
	public List<Customer> getCustomers() {
		return customers;
	}
	public void setCustomers(List<Customer> customers) {
		this.customers = customers;
	}
	public String getContactEmail() {
		return contactEmail;
	}
	public void setContactEmail(String contactEmail) {
		this.contactEmail = contactEmail;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public List<Service> getServices() {
		return services;
	}
	public void setServices(List<Service> services) {
		this.services = services;
	}
	public Login getLogin() {
		return login;
	}
	public void setLogin(Login login) {
		this.login = login;
	}
	
	
}
