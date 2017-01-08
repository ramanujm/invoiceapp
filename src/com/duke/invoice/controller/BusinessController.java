package com.duke.invoice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.duke.inovice.domain.Business;
import com.duke.inovice.domain.Login;
import com.duke.invoice.weberequests.RegisterRq;

/**
 * Main controller for all business related activity.
 * @author root
 *
 */
@Controller
public class BusinessController {

	/**
	 * verify the login credentials.
	 * @param username
	 * @param password
	 * @return
	 * @throws Exception
	 */
	
	@RequestMapping(value = "/login" , method = RequestMethod.POST)
	public @ResponseBody Response doLogin(@RequestParam("username") String username,
			@RequestParam("password") String password) {
        Response response = new Response();
        if (username.equals("test") && password.equals("test")){
        	response.setResult("Success");
        	response.setCode("001");
        }else{
        	response.setResult("Failed");
        	response.setCode("002");
        }
	   //Person person=personService.savedata(jsonString);
	   return response;
	}
	
	@RequestMapping(value = "/register" , method = RequestMethod.POST)
	public @ResponseBody Response doRegister(@RequestBody RegisterRq registerRq) {    
            Response response = new Response();
        	response.setResult("Success");
        	response.setCode("001");
       
	   return response;
	}
	
	@RequestMapping(value = "/register2" , method = RequestMethod.GET)
	public @ResponseBody Response doregisterdum() {    
            Response response = new Response();
        	response.setResult("Success");
        	response.setCode("001");
       
	   return response;
	}
	
	@RequestMapping(value = "/editCompanyDetail" , method = RequestMethod.POST)
	public Response editBusinessDetail(@RequestBody Business business) throws Exception {
		Response response = new Response();
       	response.setResult("Success");
     	response.setCode("001");
     	return response;
    }	
	
}
