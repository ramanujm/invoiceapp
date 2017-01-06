package com.duke.inovice.service;

import com.duke.inovice.domain.Login;

public interface LoginService {
	
	public int SUCCESS_LOGIN = 0;
	public int FAILED_LOGIN = 1;
	public int LOCKED_LOGIN = 2;
	
    /**
     * Perform the login check.
     * @param login
     * @return int code regarding the status of the login.
     * @throws Exception
     */
	public int doLogin(String username, String password) throws Exception;
	
	
}
