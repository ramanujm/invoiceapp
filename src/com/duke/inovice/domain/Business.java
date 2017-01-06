package com.duke.inovice.domain;

import java.util.List;

public class Business {

	private String name;
	private Address address;
	private Technician contactPerson;
    private List<Customer> customers;
    private String contactEmail;
    private String phone;
    private List<Service> services;
    private String industry;
    private String region;
    private String taxNo;
    private String fax;
    private String website;
    private byte[] companyLogo;
    private List<Contract> contractTempates;
    private List<EmailTemplate> emailTempates;
    
    
	public List<Contract> getContractTempates() {
		return contractTempates;
	}
	public void setContractTempates(List<Contract> contractTempates) {
		this.contractTempates = contractTempates;
	}
	public List<EmailTemplate> getEmailTempates() {
		return emailTempates;
	}
	public void setEmailTempates(List<EmailTemplate> emailTempates) {
		this.emailTempates = emailTempates;
	}
	public byte[] getCompanyLogo() {
		return companyLogo;
	}
	public void setCompanyLogo(byte[] companyLogo) {
		this.companyLogo = companyLogo;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getTaxNo() {
		return taxNo;
	}
	public void setTaxNo(String taxNo) {
		this.taxNo = taxNo;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getIndustry() {
		return industry;
	}
	public void setIndustry(String industry) {
		this.industry = industry;
	}
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
	public Technician getContactPerson() {
		return contactPerson;
	}
	public void setContactPerson(Technician contactPerson) {
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

	
	
}
