package com.duke.inovice.domain;

import java.util.Calendar;

public class EmailMessage {

	private String subject;
	private String bodyText;
	private String[] to;
	private String[] from;
	private Calendar timeStamp;
	private byte[] attachement;
	
	public Calendar getTimeStamp() {
		return timeStamp;
	}
	public void setTimeStamp(Calendar timeStamp) {
		this.timeStamp = timeStamp;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getBodyText() {
		return bodyText;
	}
	public void setBodyText(String bodyText) {
		this.bodyText = bodyText;
	}
	public String[] getTo() {
		return to;
	}
	public void setTo(String[] to) {
		this.to = to;
	}
	public String[] getFrom() {
		return from;
	}
	public void setFrom(String[] from) {
		this.from = from;
	}
	public byte[] getAttachement() {
		return attachement;
	}
	public void setAttachement(byte[] attachement) {
		this.attachement = attachement;
	}
	
	
}
