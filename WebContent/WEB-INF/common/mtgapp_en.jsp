<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>B2B Bank - Apply Now for a Mortgage</title>
<link rel="stylesheet" href="css/style.css">

<script src="js/smartloan.js"></script>
<script>
	function popUp(URL) {
	day = new Date();
	id = day.getTime();
	eval("page" + id + " = window.open(URL, '" + id + "', 'toolbar=0,scrollbars=1,location=0,statusbar=0,menubar=0,resizable=1,width=580,height=500');");
	}

	function go_french() {
		  location.href = 'applyMortgageFR.action';
		}

		function go_english() {
		  location.href = "applyMortgageEN.action";
		}
</script>
</head>

<body bgcolor="#FFFFFF" LEFTMARGIN="0" TOPMARGIN="0" MARGINWIDTH="0" MARGINHEIGHT="0" >

<script type='text/javascript'>
function Go(){return}</script>

<p>
<form name="end" action="" method="post" onSubmit="return checkMandatoryFields();">

<table width="640" border="0" align="center" cellPadding="0" cellSpacing="0">
<tr>
		<td>
			<table border="0" cellPadding="0" cellSpacing="0" width="640">
			<tr>
			   <td colspan="2" align="right"><input type="button" name="toggle" value="Fran&ccedil;ais" onClick="javascript:go_french();"/></td>
			<tr>
      <tr>
			 <td colspan="2">  
			  	<img src='images/logo.gif'>
			  <p>
			 </td>
			</tr>			
			<tr>
			 <td colspan="2">  
			 			  	
			  <br/><br/>
			 </td>
			</tr>  
			  
			  <tr>
			    <td align="left"><a href="javascript:reloadCooks()" onmouseover="self.status='Reload Data';return true;"><img alt="Reload Data" border="0" src="images/reload_data_en.gif"></a> 
			    </td>
			    <td align="right"><span class="mandatory">*</span>Mandatory field.
			    </td></tr>
			</table>

    <!--APPLICANT 1______________________________//-->
    
      <table border="0" width="640" cellpadding="0" cellspacing="0">
        <tr><td colspan="3"><hr/></td></tr>
        <tr>
          <td>Referral Card Number<span class="mandatory">&nbsp;*</span></td>
          <td><input name="FOfficeName" id="fOfficeName" onblur="comaDel(this,25,0,0,0)" size="25"></td>
          <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on Referral Form Reference Number'; return true"><img alt="Help" border="0" src="images/b2b_help_en.gif"></a></td>
        </tr>
        <tr>
          <td>Financial Representative</td>
          <td><input name="FAgentName" onblur="comaDel(this,25,1,0,0)" size="25" id="fAgentName"></td>
        </tr>
        <tr>
          <td>Best Time to Call</td>
          <td><input type="text" size="45" id="prefContactDateTime" name="prefContactDateTime"/></td>
          <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on The best day and time to contact me'; return true"><img alt="Help" border="0" src="images/b2b_help_en.gif"></a></td>
        </tr>
        <tr>
          <td>Contact Number</td>
          <td><input type="text" onchange="comaDel(this,10,0,0,4); checkPhoneNumberLength(this)" size="12" id="bestContactNumber" name="bestContactNumber"/></td>
        </tr>
      
      </table>
			<table border="0" width="640" cellpadding="0" cellspacing="0">
				<tr><td><hr/></td></tr>
				<tr>
					<td>
						 <p class="header">Mortgage Details</span>
					</td>
				</tr>

			</table>


<!--<center>-->

<table border="0" width="640" cellspacing="0" cellpadding="0">
<tr>
	<td></td><td><input type="hidden" name="FAgentNameSpare"></td>
</tr>

<tr>
	<td></td><td><input type="hidden" name="FOfficeNameSpare"></td>
</tr>
</table>
<table border="0" width="640" cellspacing="0" cellpadding="0" bgcolor>		
  <input type="hidden" name="FLoanPurp" id="fLoanPurp"/>
  <input type="hidden" name="FMrtType" id="fMrtType"/>
	<!--tr>
		<td>Type of Loan:<span class="mandatory">&nbsp;*</span><br/>		
		<select name="FMrtType" id="fMrtType">
				<option selected>Choose
				<option value="Approval">Approval
				<option value="Pre-Approval">Pre-Approval
			</option>
		</select>	
		</td>
		<td>Purpose of Loan:<span class="mandatory">&nbsp;*</span><br/>
		<select name="FLoanPurp" id="fLoanPurp">
			<option selected>Choose
			<option value="Purchase">Purchase
			<option value="Refinance">Refinance
			<option value="Switch">Switch
			</option>
		</select>
		</td-->	    
	</tr>    
	<tr>
		<td>Value of Home:<br/><input name="FHomeValue" onblur="comaDel(this,8,0,0,3)" size="8" id="fHomeValue"></td>
		<td>Mortgage Amount<br> Required:<br/><input name="FMortgageAmountRequested" onblur="comaDel(this,8,0,0,3)" size="15" id="fMortgageAmountRequested"></td>		
		<td>Approx Date Funds<br/>Required:<font size="1">(MMDDYYYY)</font>&nbsp;<br/>
        <input name="FApproxDate" onchange="comaDel(this,8,0,0,3);CloDChk(this,8);" size="10" maxlength="8" id="fApproxDate"></td>
	</tr>
	
	<tr>
	   <td>Term:<br/><input name="FTERM" onblur="comaDel(this,8,0,0,3)" size="5" id="fterm">Yrs&nbsp;
	      <input name="FMTERM" onblur="comaDel(this,8,0,0,3);checkMonths(this,'Term Months');" size="5" id="fmterm">Mos</td>
	   <td>Amortization:<br/><input name="FAMORT" onblur="comaDel(this,8,0,0,3)" size="5" id="famort">Yrs
	   <td>Payment Frequency:<br/>
	       <select name="pay_freq">
		        <option value="">PLEASE CHOOSE
		        <option value="M" SELECTED>Monthly
		        <option value="S">Semi-Monthly (1st and 15th)
		        <option value="B">Accelerated Bi-Weekly
            <option value="W">Accelerated Weekly</option>
		    </select>
		  </td>
  </tr> 
</table>
<!--table border="0" width="640" cellpadding="0" cellspacing="0">
<tr><td><hr/></td></tr>
  <tr>
  	<td>
  		 <p class="header">Source of Downpayment</span>
  	</td>
  </tr>
</table>
<table>  
	<tr><td>Please enter Source of Downpayment Details in the Notes section</td></tr>
</table-->

<input name="DContactEmail" type="hidden">
<!--<center>-->
<table width="640" cellpadding="0" cellspacing="0" BORDER="0">
	<tr><td><hr></td></tr>
	<tr>
	    <td>
			 <p class="header">Personal Information - Applicant 1</span>
		</td>
	</tr>
</table>
<div>
<br>
<table border="0" width="640" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF">
	<tr>
	    <td colspan="3"><span class="apply">Identification</span></td>
	</tr>	
	<tr align="bottom">	  	
		<td>First Name:<span class="mandatory">&nbsp;*</span>
			<br>
			<input name="BFirstName" onchange="comaDel(this,15,1,0,0)" size="15" id="bFirstName">
		</td>
	    
		<td>Last Name:<span class="mandatory">&nbsp;*</span>
		<br>
		<input name="BLastName" onchange="comaDel(this,20,1,0,0)" size="20" id="bLastName">
		</td>	
	    

		<td>Initial:<br><input name="BGivenName" onchange="comaDel(this,1,1,0,0)" size="2"> 
		</td>
		<td>Date of Birth:<br><font size="1">(MMDDYYYY)</font><span class="mandatory">&nbsp;*</span>
		<br>
		<input name="BDOB" type="text" onchange="comaDel(this,8,0,0,3);chekDat(this,8);" size="10" maxlength="8" width="500px" id="bDOB"/>
		</td>
	</tr>	
</table>
<table border="0" width="640" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF">	
	<tr vAlign="bottom">
		<td>SIN#:<span class="mandatory">&nbsp;
		<br>
		<input name="BBorrowerSIN" onblur="getit(this);comaDel(this,9,0,0,4);" size="11">&nbsp;&nbsp;
		</td>
		
    <td colSpan="4">E-Mail Address:
	 	   <br><input name="BEmailAddr" onblur="emailCheck(this.value,1)" maxlength="50" size="30" id="bEmailAddr">		
		</td>
		
		
      <td>Dependents:<br/>
      <input type="text" size="2" name="BDependents" onBlur="comaDel(this,2,0,0,3)" id="bDependents">		
      </td>
      <td>Marital Status:<br/>
      <select name="BMaritalStatus">
        <option value="">choose
        <option value="S">Single
        <option value="M">Married
        <option value="P">Separated
        <option value="D">Divorced
        <option value="W">Widow(er)
        <option value="C">Common Law
      </select></td>
	 
	</tr>
	<input name="BFaxNumber" type="hidden">
	<input name="BBusinessFax" type="hidden"> 
	<input name="BCellPhone" type="hidden"> 
	<input name="BPagerNumber" type="hidden">
</table>
<!--table width="640" align="center">
<tr><td align="left"><hr/></td></tr>
</table-->
		<input name="BMOC" type="hidden">  
		<input name="BResidentStatus" type="hidden">
		<!-- input name="BDependents" type="hidden" -->
	
<!--<center>-->
<div>

<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<tr><td align="left" colspan="5"><hr/></td></tr>
	<tr>
		<td colspan="5"><span class="apply">Current Living Address</span></td></tr>
	<tr vAlign="bottom">
		<td>Number:<span class="mandatory">&nbsp;*</span><br><input name="BAddress1" onchange="comaDel(this,5,0,0,3)" size="4" id="bAddress1"></td>
		<td>Street Name:<span class="mandatory">&nbsp;*</span><br><input name="BAddress2" onchange="comaDel(this,25,0,0,0)" size="18" id="bAddress2"></td>
		<td>Street Type:<br>
					<select name="BAddress3" id="bAddress3"> 
							<option selected value=" ">choose
							<option value=" ">None
							<option value="Avenue">Avenue
							<option value="Boulevard">Boulevard
							<option value="Circle">Circle
							<option value="Court">Court
							<option value="Crescent">Crescent
							<option value="Drive">Drive
							<option value="Gate">Gate
							<option value="Lane">Lane
							<option value="Place">Place
							<option value="Road">Road
							<option value="Street">Street
							<option value="Terrace">Terrace
							<option value="Trail">Trail
							<option value="Way">Way
							</option>
					</select> 
		</td>
		<td>Street Dir.:<br>
					<select name="BAddress4" size="1" id="bAddress4"> 
					<option selected value=" ">choose
					<option value=" ">None
					<option value="E">East
					<option value="W">West
					<option value="N">North
					<option value="S">South
					<option value="NE">North East
					<option value="NW">North West
					<option value="SE">South East
					<option value="SW">South West
					</option>
					</select>
		</td>
		<td>Unit:
		<br>
		<input name="BCurrentUnitNum" onchange="comaDel(this,4,0,0,0)" size="3" id="bCurrentUnitNum"></td>
	</tr>
</table>
<!--<center>-->
<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">        
	<tr vAlign="bottom">
        <td width="80">City/Town:<span class="mandatory">&nbsp;*</span><br/>		
		<input name="BCurrentCity" onchange="comaDel(this,15,1,0,0)" size="15" id="bCurrentCity"></td>
        <td width="175">Province:
		<span class="mandatory">&nbsp;*</span><br>	
				<select name="BCurrentProvince" id="bCurrentProvince"> 
				<option selected value="">choose
				<option value="AB">Alberta
				<option value="BC">British  Columbia
				<option value="MB">Manitoba
				<option value="NB">New Brunswick
				<option value="NF">Newfoundland
				<option value="NS">Nova Scotia
				<option value="NT">Northwest Territories
				<option value="NU">Nunavut
				<option value="ON">Ontario
				<option value="QC">Quebec
				<option value="PE">P.E.I.
				<option value="SK">Saskatchewan
				<option value="YK">Yukon
				</option>
				</select> 
		</td>
		<td align="left" width="100">Postal Code:<span class="mandatory">&nbsp;*</span><br/>
		
		<input name="BCurrentCode" onblur="postDel(this,6,0,2,0);" onchange="/*comaDel(this,6,0,2,0);*/" size="8" id="bCurrentCode"></td>
		
		<td width="150" vAlign="bottom"><br>Residential Status:
					<span class="mandatory">&nbsp;*</span><br>
					<select name="BAccommodation" id="bAccommodation"> 
					<option selected value="N/A">choose
					<option value="Own">Own
					<option value="Rent">Rent
					<option value="Live with parents">Live with parents
					<option value="Other">Other
					</option>
					</select>
			</td>
		
		</tr>
		<tr vAlign="bottom">
		<td>Home Ph.#:<span class="mandatory">&nbsp;*</span><br/>(incl. area code)<br>
			<input name="BHomePhone" onchange="comaDel(this,10,0,0,4); checkPhoneNumberLength(this)" size="12" id="bHomePhone">
		</td> 
		
		
  		<td colspan="2" align="left">Monthly Rent:<br>
  				<input name="BLandlord" onchange="comaDel(this,8,0,0,3)" size="8"></td></tr> 
  		</td>
		
			<!--td width="150" vAlign="bottom"><br>Residential Status:
					<span class="mandatory">&nbsp;*</span><br>
					<select name="xBAccommodation"> 
					<option selected value="N/A">choose
					<option value="Own">Own
					<option value="Rent">Rent
					<option value="Live with parents">Live with parents
					<option value="Other">Other
					</option>
					</select>
			</td-->
			</tr>
			<!--DEV NOTE: BLandLord used for Rent Payments  ... mapped to RENT in MBase-->
			
			
  			<tr>
  				<td align="left" colspan=4>Time at this address: (YYMM)<br/>(eg. 4 years & 2 months = 0402)<br/>(Minimum 3 years required. Provide Previous Address details in the Notes section)<br/>
  		    <input name="BCurrentAddrTime" onBlur="comaDel(this,4,0,0,3);chekDat(this,4);" size="4" id="bCurrentAddrTime"></td>
  			</tr>	
			

</table>
<table width="640" cellspacing="0" cellpadding="0" border="0">
<tr><td></td></tr>
<table>

<!--input name="BLandlord" type="hidden" /-->
<!--input name="xBAccommodation" type="hidden"/>
<input name="Bsalutation" type="hidden" />
<input name="BLandlordNum" type="hidden"> 
	<input name="BPreviousAddr1" type="hidden"> 
	<input name="BPreviousAddr2" type="hidden"> 
	<input name="BPreviousAddr3" type="hidden"> 
	<input name="BPreviousAddr4" type="hidden"> 
	<input name="BPreviousUnitNum" type="hidden"> 
	<input name="BPreviousCity" type="hidden">
	<input name="BPreviousProvince" type="hidden"> 
	<input name="BPreviousCode" type="hidden"> 
	<input name="BEmploymentStatus" type="hidden"> 
</table-->	

<!-- table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<tr><td align="left" colspan="5"><hr/></td></tr>
	<tr>
		<td colspan="5"><span class="apply">Previous Living Address</span></td></tr>
	<tr vAlign="bottom">
		<td>Number:<span class="mandatory">&nbsp;*</span><br><input name="BPreviousAddr1" onchange="comaDel(this,5,0,0,3)" size="4"></td>
		<td>Street Name:<span class="mandatory">&nbsp;*</span><br><input name="BPreviousAddr2" onchange="comaDel(this,25,0,0,0)" size="18"></td>
		<td>Street Type:<br>
					<select name="BPreviousAddr3"> 
							<option selected value=" ">choose
							<option value=" ">None
							<option value="Avenue">Avenue
							<option value="Boulevard">Boulevard
							<option value="Circle">Circle
							<option value="Court">Court
							<option value="Crescent">Crescent
							<option value="Drive">Drive
							<option value="Gate">Gate
							<option value="Lane">Lane
							<option value="Place">Place
							<option value="Road">Road
							<option value="Street">Street
							<option value="Terrace">Terrace
							<option value="Trail">Trail
							<option value="Way">Way
							</option>
					</select> 
		</td>
		<td>Street Dir.:<br>
					<select name="BPreviousAddr4" size="1"> 
					<option selected value=" ">choose
					<option value=" ">None
					<option value="E">East
					<option value="W">West
					<option value="N">North
					<option value="S">South
					<option value="NE">North East
					<option value="NW">North West
					<option value="SE">South East
					<option value="SW">South West
					</option>
					</select>
		</td>
		<td>Unit:
		<br>
		<input name="BPreviousUnitNum" onchange="comaDel(this,4,0,0,0)" size="3"></td>
	</tr>
</table>

<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">        
	<tr vAlign="bottom">
        <td width="80">City/Town:<span class="mandatory">&nbsp;*</span><br/>		
		<input name="BPreviousCity" onchange="comaDel(this,15,1,0,0)" size="15"></td>
        <td width="175">Province:
		<span class="mandatory">&nbsp;*</span><br>	
				<select name="BPreviousProvince"> 
				<option selected value="">choose
				<option value="AB">Alberta
				<option value="BC">British  Columbia
				<option value="MB">Manitoba
				<option value="NB">New Brunswick
				<option value="NF">Newfoundland
				<option value="NS">Nova Scotia
				<option value="NT">Northwest Territories
				<option value="NU">Nunavut
				<option value="ON">Ontario
				<option value="QC">Quebec
				<option value="PE">P.E.I.
				<option value="SK">Saskatchewan
				<option value="YK">Yukon
				</option>
				</select> 
		</td>
		<td align="left" width="100">Postal Code:<span class="mandatory">&nbsp;*</span><br/>
		
		<input name="BPreviousCode" onblur="postDel(this,6,0,2,0);" onchange="/*comaDel(this,6,0,2,0);*/" size="8"></td>
		</tr>
</table-->




<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<tr><td><hr/></td></tr>
	<tr>
        <td colspan="2"><span class="apply">Present Employer</span>
		</td>
	</tr>
</table>
<table border="0" width="640" bgcolor="#FFFFFF">	
	<tr vAlign="bottom">
		<td>Occupation Type:<br>
				<select name="Boccupation" id="bOccupation"> 
				<option selected value="N/A">choose
				<option value="01">Manager
				<option value="02">Clerical
				<option value="03">Labourer/Tradesperson
				<option value="04">Retired
				<option value="05">Professional
				<option value="06">Self Employed
				<option value="99">Other
				</option>
				</select> 
		</td>
	        
		<td>Industry Sector:
		<br>
				<select name="BIndustrySector"> 
				<option selected value="N/A">choose
				<option value="01">Construction
				<option value="02">Government
				<option value="03">Health
				<option value="04">Education
				<option value="05">Hi-Tech
				<option value="06">Retail Sales
				<option value="07">Leisure/Entertainment
				<option value="08">Banking/Finance
				<option value="09">Transport
				<option value="10">Services
				<option value="11">Manufacturing
				<option value="12">Farming/Natural Resources
				<option value="99">Other
				</option>
				</select> 
		</td>
	    <td>Name of Employer:
			<br><input name="BPresEmpName" onchange="comaDel(this,25,0,0,0)" size="25" id="bPresEmpName"> 
		</td>
		<td colspan="2">Work Ph.#:<br/>(incl. area code)<br>
			<input name="BBusinessPhone" onchange="comaDel(this,10,0,0,4); checkPhoneNumberLength(this)" size="12"> 
		</td>
	<!--input name="BIndustrySector" type="hidden"/-->
	<input name="BPresContactName" type="hidden">
	<input name="BPresContactPhone" type="hidden">
	<input name="BPresFaxNumber" type="hidden"></td></tr>
</table>


<!-- Employer Address -->
<!-- LSAM requires Employer address -->
<!-- input name="BEmpAddress1" type="hidden"/>
<input name="BEmpAddress2" type="hidden"/>
<input name="BEmpAddress3" type="hidden"/>
<input name="BEmpAddress4" type="hidden"/>
<input name="BEmpUnitNum" type="hidden"/>
<input name="BEmpCity" type="hidden"/>
<input name="BEmpProvince" type="hidden"/>
<input name="BEmpCode" type="hidden"/>

<input name="BTypeOfBus" type="hidden"/> 
<input name="BPresPosition" type="hidden"/ -->

<input name="BYrsInLineOfBus" type="hidden"/>
<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
		<tr>
		   <td><br><span class="apply">Employer Address:</span>
			</td>
		</tr>
</table>
<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<tr>
	   <td>Number:
		<br>
	<input name="BEmpAddress1" onchange="comaDel(this,5,0,0,3)" size="4"></td>
	   <td>Street Name:
		<br>
	<input name="BEmpAddress2" onchange="comaDel(this,25,0,0,0)" size="18"></td>
		<td>Street Type:
		<br>
			<select name="BEmpAddress3"> 
			<option selected value=" ">choose
							<option value=" ">None
							<option value="Avenue">Avenue
							<option value="Boulevard">Boulevard
							<option value="Circle">Circle
							<option value="Court">Court
							<option value="Crescent">Crescent
							<option value="Drive">Drive
							<option value="Gate">Gate
							<option value="Lane">Lane
							<option value="Place">Place
							<option value="Road">Road
							<option value="Street">Street
							<option value="Terrace">Terrace
							<option value="Trail">Trail
							<option value="Way">Way
							
							</option>
			</select> 
		</td>
		<td>Street Dir.:<br>
			<select name="BEmpAddress4" size="1"> 
			<option selected value=" ">choose
			<option value=" ">None
			<option value="E">East
			<option value="W">West
			<option value="N">North
			<option value="S">South
			<option value="NE">North East
			<option value="NW">North West
			<option value="SE">South East
			<option value="SW">South West
			</option>
			</select>
		</td>
	    <td>Unit:<br>
	<input name="BEmpUnitNum" onchange="comaDel(this,4,0,0,0)" size="3">
		</td>
	</tr>
</table>

<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<tr vAlign="bottom">
	   <td>City/Town:
		<br>
	<input name="BEmpCity" onchange="comaDel(this,15,1,0,0)" size="15"></td>
	    <td>Province:
		<br>
				<select name="BEmpProvince"> 
				<option selected value="">choose
				<option value="AB">Alberta
				<option value="BC">British  Columbia
				<option value="MB">Manitoba
				<option value="NB">New Brunswick
				<option value="NF">Newfoundland
				<option value="NS">Nova Scotia
				<option value="NT">Northwest Territories
				<option value="NU">Nunavut
				<option value="ON">Ontario
				<option value="QC">Quebec
				<option value="PE">P.E.I.
				<option value="SK">Saskatchewan
				<option value="YK">Yukon
				</option>
				</select> 
		</td>
	    <td>Postal Code:<span class="mandatory">&nbsp;</span>
		<br>
	<input name="BEmpCode" onblur="postDel(this,6,0,2,0)" onchange="comaDel(this,6,0,2,0)" size="8"> 
	
		</td>
	</tr>
	</table>
	<table width="640" cellpadding="0" cellspacing="0" border="0">
	<tr vAlign="bottom">
	    <td width="200"><br>Length of Employment:&nbsp;(YYMM)
			<br>(eg. 4 years &amp; 2 months = 0402)<br>
			<input name="BLengthService" onBlur="comaDel(this,4,0,0,3);chekDat(this,4);" size="4" id="bLengthService">
		</td>
			
	    <!--td width="200">Years in Line of Bus.: (YYMM)
			<br><span class="app_smalltxt">(eg. 4 years &amp; 2 months = 0402)</span><br>
			<input name="BYrsInLineOfBus" onBlur="comaDel(this,4,0,0,3);chekDat(this,4);" size="4"></td-->
	  <td width="200">Annual&nbsp;Income:<br>
			<input name="BAnnualIncome" onchange="comaDel(this,8,0,0,3)" size="8" id="bAnnualIncome">
		</td>
	
	    <td>Type of Income:<br>
				<select name="BTypeOfIncome" id="bTypeOfIncome"> 
				<option selected value="N/A">choose
				<option value="Salary/Hourly">Salary/Hourly
				<option value="Commission">Commission
				<option value="Pension">Pension
				<option value="Alimony">Alimony
				<option value="Other">Other
				</option>
				</select> 
		</td>
		</tr>
		<tr>
		<td><br>Other Income Source:<br>
		<input name="BOtherIncomeSource" onchange="comaDel(this,30,1,0,0)" size="30" maxlength="30">			
		</td>
			
			<td><br>Other Income Amount:<br>
			<input name="BOtherIncome" onchange="comaDel(this,8,0,0,3)" size="8">			
			</td>
	</tr>
</table>


<!--input name="BOtherIncomeSource" type="hidden"/>
<input name="BOtherIncome" type="hidden"/-->

<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<tr><td><hr/></td></tr>
	<tr>
        <td colspan="2"><span class="apply">Previous Employer</span>
		</td>
	</tr>
</table>
<table>
  <tr>
  <td>Occupation Type:<br>
				<select name="BPrevOccupation"> 
				<option selected value="N/A">choose
				<option value="01">Manager
				<option value="02">Clerical
				<option value="03">Labourer/Tradesperson
				<option value="04">Retired
				<option value="05">Professional
				<option value="06">Self Employed
				<option value="99">Other
				</option>
				</select> 
		</td>
  <td>Name of Employer:
			<br><input name="BPrevEmpName" onchange="comaDel(this,25,0,0,0)" size="25"> 
		</td>
	 </tr>	 
</table>

<table>
<!-- HERE!!!! -->
<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
		<tr>
		   <td><br><span class="apply">Employer Address:</span>
			</td>
		</tr>
</table>
<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<tr>
	   <td>Number:
		<br>
	<input name="BPrevEmpAddress1" onchange="comaDel(this,5,0,0,3)" size="4"></td>
	   <td>Street Name:
		<br>
	<input name="BPrevEmpAddress2" onchange="comaDel(this,25,0,0,0)" size="18"></td>
		<td>Street Type:
		<br>
			<select name="BPrevEmpAddress3"> 
			<option selected value=" ">choose
							<option value=" ">None
							<option value="Avenue">Avenue
							<option value="Boulevard">Boulevard
							<option value="Circle">Circle
							<option value="Court">Court
							<option value="Crescent">Crescent
							<option value="Drive">Drive
							<option value="Gate">Gate
							<option value="Lane">Lane
							<option value="Place">Place
							<option value="Road">Road
							<option value="Street">Street
							<option value="Terrace">Terrace
							<option value="Trail">Trail
							<option value="Way">Way
							
							</option>
			</select> 
		</td>
		<td>Street Dir.:<br>
			<select name="BPrevEmpAddress4" size="1"> 
			<option selected value=" ">choose
			<option value=" ">None
			<option value="E">East
			<option value="W">West
			<option value="N">North
			<option value="S">South
			<option value="NE">North East
			<option value="NW">North West
			<option value="SE">South East
			<option value="SW">South West
			</option>
			</select>
		</td>
	    <td>Unit:<br>
	<input name="BPrevEmpUnitNum" onchange="comaDel(this,4,0,0,0)" size="3">
		</td>
	</tr>
</table>

<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<tr vAlign="bottom">
	   <td>City/Town:
		<br>
	<input name="BPrevEmpCity" onchange="comaDel(this,15,1,0,0)" size="15"></td>
	    <td>Province:
		<br>
				<select name="BPrevEmpProvince"> 
				<option selected value="">choose
				<option value="AB">Alberta
				<option value="BC">British  Columbia
				<option value="MB">Manitoba
				<option value="NB">New Brunswick
				<option value="NF">Newfoundland
				<option value="NS">Nova Scotia
				<option value="NT">Northwest Territories
				<option value="NU">Nunavut
				<option value="ON">Ontario
				<option value="QC">Quebec
				<option value="PE">P.E.I.
				<option value="SK">Saskatchewan
				<option value="YK">Yukon
				</option>
				</select> 
		</td>
	    <td>Postal Code:<span class="mandatory">&nbsp;</span>
		<br>
	<input name="BPrevEmpCode" onblur="postDel(this,6,0,2,0)" onchange="comaDel(this,6,0,2,0)" size="8"> 
	
		</td>
	</tr>
	</table>
	<table width="640" cellpadding="0" cellspacing="0" border="0">
	<tr vAlign="bottom">
	    <td width="200"><br>Length of Employment:&nbsp;(YYMM)
			<br>(eg. 4 years &amp; 2 months = 0402)<br>
			<input name="BPrevLengthService" onBlur="comaDel(this,4,0,0,3);chekDat(this,4);" size="4">
		</td>
		<td width="200">Annual&nbsp;Income:<br>
			<input name="BPrevAnnualIncome" onchange="comaDel(this,8,0,0,3)" size="8">
			</td>
			
	</tr>
	

<!-- HERE !!!! -->


</table>
<!--table width="640" cellspacing="0" cellpadding="0" border="0">
<tr><td><hr/></td></tr>
</table-->

<!-- input name="BPrevEmpName" type="hidden">
<input name="BPrevEmpAddress1" type="hidden">
<input name="BPrevEmpCity" type="hidden">
<input name="BPrevEmpProvince" type="hidden"> 
<input name="BPrevOccupation" type="hidden"> 
<input name="BPrevLengthService" type="hidden">
<input name="BPrevAnnualIncome" type="hidden">
<input name="BPrevEmpAddress2" type="hidden"> 
<input name="BPrevEmpAddress3" type="hidden"> 
<input name="BPrevEmpAddress4" type="hidden"> 
<input name="BPrevEmpUnitNum" type="hidden"> 
<input name="BPrevEmpCode" type="hidden" --> 
	<input name="BIncomeType1" type="hidden"> 
	<input name="BIncomeAmount1" type="hidden"> 
	<input name="BIncomeType2" type="hidden"> 
	<input name="BIncomeAmount2" type="hidden"> 
	<input name="BIncomeType3" type="hidden"> 
	<input name="BIncomeAmount3" type="hidden"> 
	<input name="BIncomeType4" type="hidden"> 
	<input name="BIncomeAmount4" type="hidden"> 
	<input name="BNoteScreen" type="hidden">



	<!--APPLICANT 2_____________________________//-->
<table border="0" width="640" cellpadding="0" cellspacing="0">
    <!--tr><td><hr/></td></tr-->
    <tr><td><hr/></td></tr>
		<tr>
	    <td> <p class="header">Personal Information - Applicant 2</span>
		<br></td>
	</tr>
</table>
<br>
<input name="Csalutation" type="hidden"/>
<table border="0" width="640" cellpadding="0" cellspacing="0">
  
		<tr>
		    <td colspan="3"> <span class="apply">Identification</span>
			</td>
		</tr>
		<tr align="bottom">
		    <!--td>Title: <br>
				<select name="Csalutation"> 
				<option selected value="N/A">choose
				<option value="Mr.">Mr.
				<option value="Mrs.">Mrs.
				<option value="Miss.">Miss.
				<option value="Ms.">Ms.
				<option value="Dr">Dr.
				<option value="Rev.">Rev.
				</option>
				</select>
			</td-->
		    
			<td>First Name:
			<br>
			<input name="CFirstName" onchange="comaDel(this,15,1,0,0)" size="15" id="cFirstName">
			</td>
		    
			<td>Last Name:
			<br>
			<input name="CLastName" onchange="comaDel(this,20,1,0,0)" size="20" id="cLastName">
			</td>
		    
			<td>Initial:<br><input name="CGivenName" onchange="comaDel(this,1,1,0,0)" size="2"> 
			</td>
			
			<td>Date of Birth:<br>
			<input name="CDOB" onchange="comaDel(this,8,0,0,3);chekDat(this,8);" size="8" id="cDOB">
		  </td>
		</tr>
</table>	
<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<tr vAlign="bottom">
		
		
		<td>SIN#:<br/>
		<input name="CoBorrowerSIN" onchange="getit(this);comaDel(this,9,0,0,4);" size="11">&nbsp;&nbsp;
		</td>
		<td>Marital Status:<br/>
    <select name="CMaritalStatus">
      <option value="">choose
      <option value="S">Single
      <option value="M">Married
      <option value="P">Separated
      <option value="D">Divorced
      <option value="W">Widow(er)
      <option value="C">Common Law
    </select>
    </td> 
		<td>E-Mail Address:
		<br>
		<input name="CEmailAddr" onblur="emailCheck(this.value,2)" maxlength="50" size="30" id="cEmailAddr">
		</td>
		
		<!--tr>    		
  		<td colspan="2">Work Phone:<br/>(incl. area code)
  		<br>
  		<input name="CBusinessPhone" onchange="comaDel(this,10,0,0,4)" size="12"> 
  		</td>
  	</tr-->
		<input name="CBusinessFax" type="hidden"> 
		<input name="CCellPhone" type="hidden"> 
		<input name="CPagerNumber" type="hidden">
	</table>
	
	
	<input name="CMOC" type="hidden"> 
	<input name="CResidentStatus" type="hidden">
	<input name="CDependents" type="hidden"> 
	

<table width="640" cellspacing="0" cellpadding="0" border="0">
<tr><td><hr/></td></tr>
</table>

<table border="0" width="640" cellpadding="0" cellspacing="0">
	<tr>
	    <td colspan="5">
		<span class="apply">Current Living Address</span>
		<br>
		</td>
	</tr>
	<tr>
		<td colspan="5"><a href="javascript:onClick=copyAddr()"><img alt="Copy Applicant 1 Address" border="0" src="images/copyapplicant1_en.gif" Alt="Address 1 Applicant"></a></td></tr>
	 <tr vAlign="bottom">
	   <td>Number:<br>
			<input name="CAddress1" onchange="comaDel(this,5,0,0,3)" size="4" id="cAddress1"></td>
	    <td>Street Name:
		<br>
	<input name="CAddress2" onchange="comaDel(this,25,0,0,0)" size="18" id="cAddress2"></td>
	    <td>Street Type:<br>
				<select name="CAddress3" id="cAddress3"> 
				
							<option selected value=" ">choose
							<option value=" ">None
							<option value="Avenue">Avenue
							<option value="Boulevard">Boulevard
							<option value="Circle">Circle
							<option value="Court">Court
							<option value="Crescent">Crescent
							<option value="Drive">Drive
							<option value="Gate">Gate
							<option value="Lane">Lane
							<option value="Place">Place
							<option value="Road">Road
							<option value="Street">Street
							<option value="Terrace">Terrace
							<option value="Trail">Trail
							<option value="Way">Way
							
							
							</option>
				</select>
		</td>
		<td>Street Dir.:
		<br>
				<select name="CAddress4" size="1" id="cAddress4"> 
				<option selected value=" ">choose
				<option value=" ">None
				<option value="E">East
				<option value="W">West
				<option value="N">North
				<option value="S">South
				<option value="NE">North East
				<option value="NW">North West
				<option value="SE">South East
				<option value="SW">South West
				</option>
				</select>
		</td>
		<td>Unit:<br>
	<input name="CCurrentUnitNum" onchange="comaDel(this,4,0,0,0)" size="3" id="cCurrentUnitNum"></td></tr>
	
</table>
<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">        
	<tr vAlign="bottom">
        <td width="125">City/Town:<br/>
		
		<input name="CCurrentCity" onchange="comaDel(this,15,1,0,0)" size="15" id="cCurrentCity"></td>
        <td width="175">Province:
		<br>	
				<select name="CCurrentProvince" id="cCurrentProvince"> 
				<option selected value=" ">choose
				<option value="AB">Alberta
				<option value="BC">British  Columbia
				<option value="MB">Manitoba
				<option value="NB">New Brunswick
				<option value="NF">Newfoundland
				<option value="NS">Nova Scotia
				<option value="NT">Northwest Territories
				<option value="NU">Nunavut
				<option value="ON">Ontario
				<option value="QC">Quebec
				<option value="PE">P.E.I.
				<option value="SK">Saskatchewan
				<option value="YK">Yukon
				</option>
				</select> 
		</td>
		<td align="left" width="100">Postal Code:
		
		<input name="CCurrentCode" onblur="postDel(this,6,0,2,0);" onchange="comaDel(this,6,0,2,0);" size="8" id="cCurrentCode">
		</td>
		</tr>
		<tr vAlign="bottom">
		<td>Home Ph.#: (incl. area code)<br>
			<input name="CHomePhone" onchange="comaDel(this,10,0,0,4); checkPhoneNumberLength(this)" size="12" id="cHomePhone"> 
			<input name="CFaxNumber" type="hidden">
		</td>		
		<td align="left" width="200">Time at this address: (YYMM)<br>(eg. 4 years & 2 months = 0402)<br/>
		<input name="CCurrentAddrTime" onBlur="comaDel(this,4,0,0,3);chekDat(this,4);" size="4" id="cCurrentAddrTime"></td>
			<!--td width="150" vAlign="bottom"><br>Residential Status:
					<br>
					<select name="xBAccommodation"> 
					<option selected value="N/A">choose
					<option value="Own">Own
					<option value="Rent">Rent
					<option value="Live with parents">Live with parents
					<option value="Other">Other
					</option>
					</select>
			</td-->
			</tr>
			<!--DEV NOTE: BLandLord used for Rent Payments  ... mapped to RENT in MBase-->
			<!--tr>
				<td colspan="2" align="left">Monthly Rent:<br>
				<input name="CLandlord" onchange="comaDel(this,8,0,0,3)" size="8"></td></tr> 
				</td>
			</tr-->	

</table>


<input name="CAccommodation" type="hidden" />
<input name="CLandlord" type="hidden" />
	<!--input name="CLandlordNum" type="hidden"> 
		<input name="CPreviousAddr1" type="hidden"> 
		<input name="CPreviousAddr2" type="hidden"> 
		<input name="CPreviousAddr3" type="hidden"> 
		<input name="CPreviousAddr4" type="hidden"> 
		<input name="CPreviousUnitNum" type="hidden"> 
		<input name="CPreviousCity" type="hidden"> 
		<input name="CPreviousProvince" type="hidden"> 
		<input name="CPreviousCode" type="hidden"> 
		<input name="CIndustrySector" type="hidden">
		<input name="CPresContactPhone" type="hidden"> 
		<input name="CPresFaxNumber" type="hidden">
		<input name="CPresContactName" type="hidden"-->

 
<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<tr><td align="left" colspan="5"><hr/></td></tr>
	<tr>
		<td colspan="5"><span class="apply">Previous Living Address</span></td></tr>
	<tr vAlign="bottom">
		<td>Number:<br><input name="CPreviousAddr1" onchange="comaDel(this,5,0,0,3)" size="4"></td>
		<td>Street Name:<br><input name="CPreviousAddr2" onchange="comaDel(this,25,0,0,0)" size="18"></td>
		<td>Street Type:<br>
					<select name="CPreviousAddress3"> 
							<option selected value=" ">choose
							<option value=" ">None
							<option value="Avenue">Avenue
							<option value="Boulevard">Boulevard
							<option value="Circle">Circle
							<option value="Court">Court
							<option value="Crescent">Crescent
							<option value="Drive">Drive
							<option value="Gate">Gate
							<option value="Lane">Lane
							<option value="Place">Place
							<option value="Road">Road
							<option value="Street">Street
							<option value="Terrace">Terrace
							<option value="Trail">Trail
							<option value="Way">Way
							</option>
					</select> 
		</td>
		<!--td>Street Dir.:<br>
					<select name="CPreviousAddr4" size="1"> 
					<option selected value=" ">choose
					<option value=" ">None
					<option value="E">East
					<option value="W">West
					<option value="N">North
					<option value="S">South
					<option value="NE">North East
					<option value="NW">North West
					<option value="SE">South East
					<option value="SW">South West
					</option>
					</select>
		</td-->
		<td>Unit:
		<br>
		<input name="CPreviousUnitNum" onchange="comaDel(this,4,0,0,0)" size="3"></td>
	</tr>
</table>
<!--<center>-->
<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">        
	<tr vAlign="bottom">
        <td width="80">City/Town:<br/>		
		<input name="CPreviousCity" onchange="comaDel(this,15,1,0,0)" size="15"></td>
        <td width="175">Province:<br>	
				<select name="CPreviousProvince"> 
				<option selected value=" ">choose
				<option value="AB">Alberta
				<option value="BC">British  Columbia
				<option value="MB">Manitoba
				<option value="NB">New Brunswick
				<option value="NF">Newfoundland
				<option value="NS">Nova Scotia
				<option value="NT">Northwest Territories
				<option value="NU">Nunavut
				<option value="ON">Ontario
				<option value="QC">Quebec
				<option value="PE">P.E.I.
				<option value="SK">Saskatchewan
				<option value="YK">Yukon
				</option>
				</select> 
		</td>
		<td align="left" width="100">Postal Code:<br/>
		
		<input name="CPreviousCode" onblur="postDel(this,6,0,2,0);" onchange="/*comaDel(this,6,0,2,0);*/" size="8"></td>
		</tr>
</table>


<table width="640" cellspacing="0" cellpadding="0" border="0">
<tr><td><hr/></td></tr>
</table>

<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
		  
	 <tr>
		    <td colspan="2"><span class="apply">Present Employer (Applicant 2)</span></td></tr>
		<input name="CCurrentEmployStatus" type="hidden"> 
		 <tr vAlign="bottom">
		    <td>Occupation Type:
			<br>
				<select name="Coccupation" id="cOccupation"> 
				<option selected value="N/A">choose
				<option value="01">Manager
				<option value="02">Clerical
				<option value="03">Labourer/Tradesperson
				<option value="04">Retired
				<option value="05">Professional
				<option value="06">Self Employed
				<option value="99">Other
				</option>
				</select> 
			
			</td>
		    <!--td>Industry Sector:
			<span class="mandatory">&nbsp;</span>				
			<br>
				<select name="CIndustrySector"> 
				<option selected value="N/A">choose
				<option value="01">Construction
				<option value="02">Government
				<option value="03">Health
				<option value="04">Education
				<option value="05">Hi-Tech
				<option value="06">Retail Sales
				<option value="07">Leisure/Entertainment
				<option value="08">Banking/Finance
				<option value="09">Transport
				<option value="10">Services
				<option value="11">Manufacturing
				<option value="12">Farming/Natural Resources
				<option value="99">Other
				</option>
				</select> 
				</td>
				</tr>
				<tr-->
		    <td colspan="1">Name of Employer:
				<br><input name="CPresEmpName" onchange="comaDel(this,25,0,0,0)" size="25" id="cPresEmpName"> 				
			</td>
			<td colspan="2">Work Phone:<br/>(incl. area code)<br>
				<input name="CBusinessPhone" onchange="comaDel(this,10,0,0,4); checkPhoneNumberLength(this)" size="12"> 
			</td>
		
		</tr>
</table>


<!-- Co-borrower employer address -->
<!-- input name="CEmpAddress1" type="hidden" />
<input name="CEmpAddress2" type="hidden" />
<input name="CEmpAddress3" type="hidden" />
<input name="CEmpAddress4" type="hidden" />
<input name="CEmpUnitNum" type="hidden" />
<input name="CEmpCity" type="hidden" />
<input name="CEmpProvince" type="hidden" />
<input name="CEmpCode" type="hidden" />
<input name="CTypeOfBus" type="hidden" /> 
<input name="CPresPosition" type="hidden" /-->


<!--input name="COtherIncomeSource" type="hidden" />
<input name="COtherIncome" type="hidden" /-->

<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
		<tr>
		   <td><br><span class="apply">Employer Address:</span>
			</td>
		</tr>
</table>


<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  
  <tr>
		<td>Number:
		<br><input name="CEmpAddress1" onchange="comaDel(this,5,0,0,3)" size="4"></td>
		    <td>Street Name:
		<br><input name="CEmpAddress2" onchange="comaDel(this,25,0,0,0)" size="18"></td>
	    <td>Street Type:<br>
				<select name="CEmpAddress3"> 
							<option selected value=" ">choose
							<option value=" ">None
							<option value="Avenue">Avenue
							<option value="Boulevard">Boulevard
							<option value="Circle">Circle
							<option value="Court">Court
							<option value="Crescent">Crescent
							<option value="Drive">Drive
							<option value="Gate">Gate
							<option value="Lane">Lane
							<option value="Place">Place
							<option value="Road">Road
							<option value="Street">Street
							<option value="Terrace">Terrace
							<option value="Trail">Trail
							<option value="Way">Way
							</option>
				</select>
		</td>
	    <td>Street Dir.:<br>
				<select name="CEmpAddress4" size="1"> 
				<option selected value=" ">choose
				<option value=" ">None
				<option value="E">East
				<option value="W">West
				<option value="N">North
				<option value="S">South
				<option value="NE">North East
				<option value="NW">North West
				<option value="SE">South East
				<option value="SW">South West
				</option>
				</select>
		</td>
	    <td>Unit:
		<br>
	<input name="CEmpUnitNum" onchange="comaDel(this,4,0,0,0)" size="3"></span>
		</td>
	</tr>
</table>
<table border="0" width="640" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF">
	<tr vAlign="bottom">
		<td>City/Town:
		<br>
	<input name="CEmpCity" onchange="comaDel(this,15,1,0,0)" size="15"></td>
	    <td>Province:
		<br>
				<select name="CEmpProvince"> 
				<option selected value=" ">choose
				<option value="AB">Alberta
				<option value="BC">British  Columbia
				<option value="MB">Manitoba
				<option value="NB">New Brunswick
				<option value="NF">Newfoundland
				<option value="NS">Nova Scotia
				<option value="NT">Northwest Territories
				<option value="NU">Nunavut
				<option value="ON">Ontario
				<option value="QC">Quebec
				<option value="PE">P.E.I.
				<option value="SK">Saskatchewan
				<option value="YK">Yukon
				</option>
				</select>
		</td>
		<td>Postal Code:
		<br>
		<input name="CEmpCode" onchange="comaDel(this,6,0,2,0); postDel(this,6,0,2,0);" size="8"> 
		</td></tr>
	 <tr vAlign="bottom">
	    <td><br>Length of Employment:&nbsp;(YYMM)
		<br>(eg. 4 years&amp; 2 months = 0402)<br>
		<input name="CLengthService" onBlur="comaDel(this,4,0,0,3);chekDat(this,4);" size="4" id="cLengthService"></td>
	    <!--td>Years in Line of Bus.: (YYMM)
		<br>(eg. 4 years&amp; 2 months = 0402)<br>
		<input name="CYrsInLineOfBus" onBlur="comaDel(this,4,0,0,3);chekDat(this,4);" size="4"></td-->
	    <td valign="bottom">Annual&nbsp;Income:
		<br>
		<input name="CAnnualIncome" onchange="comaDel(this,7,0,0,3)" size="7" id="cAnnualIncome"></td>
	    <td>Type of Income:<br>
				<select name="CTypeOfIncome" id="cTypeOfIncome">
				<option selected value="N/A">choose
				<option value="Salary/Hourly">Salary/Hourly
				<option value="Commission">Commission
				<option value="Pension">Pension
				<option value="Alimony">Alimony
				<option value="Other">Other
				</option>
				</select>
		</td>
		</tr>
		<tr>
		<td><br>Other Income Source:<br>
			<input name="COtherIncomeSource" onchange="comaDel(this,30,1,0,0)" size="30" maxlength="30">			
			</td>
			
			<td><br>Other Income Amount:<br>
			<input name="COtherIncome" onchange="comaDel(this,8,0,0,3)" size="8">			
			</td>
		</tr>
	<tr><td colspan="3"><br></td></tr>
</table>

<!-- HERE!!!! -->
<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<tr><td><hr/></td></tr>
	<tr>
        <td colspan="2"><span class="apply">Previous Employer</span>
		</td>
	</tr>
</table>
<table>
  <tr>
  <td>Occupation Type:<br>
				<select name="CPrevOccupation"> 
				<option selected value="N/A">choose
				<option value="01">Manager
				<option value="02">Clerical
				<option value="03">Labourer/Tradesperson
				<option value="04">Retired
				<option value="05">Professional
				<option value="06">Self Employed
				<option value="99">Other
				</option>
				</select> 
		</td>
  <td>Name of Employer:
			<br><input name="CPrevEmpName" onchange="comaDel(this,25,0,0,0)" size="25" id="bPresEmpName"> 
		</td>
	 </tr>	 
</table>
<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
		<tr>
		   <td><br><span class="apply">Employer Address:</span>
			</td>
		</tr>
</table>
<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<tr>
	   <td>Number:
		<br>
	<input name="CPrevEmpAddress1" onchange="comaDel(this,5,0,0,3)" size="4"></td>
	   <td>Street Name:
		<br>
	<input name="CPrevEmpAddress2" onchange="comaDel(this,25,0,0,0)" size="18"></td>
		<td>Street Type:
		<br>
			<select name="CPrevEmpAddress3"> 
			<option selected value=" ">choose
							<option value=" ">None
							<option value="Avenue">Avenue
							<option value="Boulevard">Boulevard
							<option value="Circle">Circle
							<option value="Court">Court
							<option value="Crescent">Crescent
							<option value="Drive">Drive
							<option value="Gate">Gate
							<option value="Lane">Lane
							<option value="Place">Place
							<option value="Road">Road
							<option value="Street">Street
							<option value="Terrace">Terrace
							<option value="Trail">Trail
							<option value="Way">Way
							
							</option>
			</select> 
		</td>
		<td>Street Dir.:<br>
			<select name="CPrevEmpAddress4" size="1"> 
			<option selected value=" ">choose
			<option value=" ">None
			<option value="E">East
			<option value="W">West
			<option value="N">North
			<option value="S">South
			<option value="NE">North East
			<option value="NW">North West
			<option value="SE">South East
			<option value="SW">South West
			</option>
			</select>
		</td>
	    <td>Unit:<br>
	<input name="CPrevEmpUnitNum" onchange="comaDel(this,4,0,0,0)" size="3">
		</td>
	</tr>
</table>

<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<tr vAlign="bottom">
	   <td>City/Town:
		<br>
	<input name="CPrevEmpCity" onchange="comaDel(this,15,1,0,0)" size="15"></td>
	    <td>Province:
		<br>
				<select name="CPrevEmpProvince"> 
				<option selected value="">choose
				<option value="AB">Alberta
				<option value="BC">British  Columbia
				<option value="MB">Manitoba
				<option value="NB">New Brunswick
				<option value="NF">Newfoundland
				<option value="NS">Nova Scotia
				<option value="NT">Northwest Territories
				<option value="NU">Nunavut
				<option value="ON">Ontario
				<option value="QC">Quebec
				<option value="PE">P.E.I.
				<option value="SK">Saskatchewan
				<option value="YK">Yukon
				</option>
				</select> 
		</td>
	    <td>Postal Code:<span class="mandatory">&nbsp;</span>
		<br>
	<input name="CPrevEmpCode" onblur="postDel(this,6,0,2,0)" onchange="comaDel(this,6,0,2,0)" size="8"> 
	
		</td>
	</tr>
	</table>
	<table width="640" cellpadding="0" cellspacing="0" border="0">
	<tr vAlign="bottom">
	    <td width="200"><br>Length of Employment:&nbsp;(YYMM)
			<br>(eg. 4 years &amp; 2 months = 0402)<br>
			<input name="CPrevLengthService" onBlur="comaDel(this,4,0,0,3);chekDat(this,4);" size="4" id="bLengthService">
		</td>
		<td width="200">Annual&nbsp;Income:<br>
			<input name="CPrevAnnualIncome" onchange="comaDel(this,8,0,0,3)" size="8">
			</td>
	</tr>

<!-- HERE !!!! -->


</table>


<!--input name="CPrevEmpName" type="hidden"> 
<input name="CPrevEmpAddress1" type="hidden"> 
<input name="CPrevEmpCity" type="hidden"> 
<input name="CPrevEmpProvince" type="hidden"> 
<input name="CPrevOccupation" type="hidden"> 
<input name="CPrevLengthService" type="hidden"> 
<input name="CPrevAnnualIncome" type="hidden"> 
<input name="CPrevEmpAddress2" type="hidden"> 
<input name="CPrevEmpAddress3" type="hidden"> 
<input name="CPrevEmpAddress4" type="hidden"> 
<input name="CPrevEmpUnitNum" type="hidden"> 
<input name="CPrevEmpCode" type="hidden"--> 
<input name="CIncomeType1" type="hidden"> 
<input name="CIncomeAmount1" type="hidden"> 
<input name="CIncomeType2" type="hidden"> 
<input name="CBIncomeAmount2" type="hidden"> 
<input name="CIncomeType3" type="hidden"> 
<input name="CIncomeAmount3" type="hidden"> 
<input name="CIncomeType4" type="hidden"> 
<input name="CIncomeAmount4" type="hidden"> 
<input name="CNoteScreen" type="hidden">
<!--APPLICANT 3________(HIDDEN)______________________//-->
<input name="Zsalutation" type="hidden"> 
<input name="ZFirstName" type="hidden"> 
<input name="ZLastName" type="hidden"> 
<input name="ZGivenName" type="hidden"> 
<input name="ZDOB" type="hidden"> 
<input name="ZoBorrowerSIN" type="hidden"> 
<input name="ZMartialStatus" type="hidden"> 
<input name="ZHomePhone" type="hidden"> 
<input name="ZFaxNumber" type="hidden"> 
<input name="ZBusinessPhone" type="hidden"> 
<input name="ZBusinessFax" type="hidden"> 
<input name="ZCellPhone" type="hidden"> 
<input name="ZPagerNumber" type="hidden"> 
<input name="ZEmailAddr" type="hidden"> 
<input name="ZMOC" type="hidden"> 
<input name="ZResidentStatus" type="hidden"> 
<input name="ZDependents" type="hidden"> 
<input name="ZAddress1" type="hidden"> 
<input name="ZAddress2" type="hidden"> 
<input name="ZAddress3" type="hidden"> 
<input name="ZAddress4" type="hidden"> 
<input name="ZCurrentUnitNum" type="hidden"> 
<input name="ZCurrentCity" type="hidden"> 
<input name="ZCurrentProvince" type="hidden"> 
<input name="ZCurrentCode" type="hidden"> 
<input name="ZCurrentAddrTime" type="hidden"> 
<input name="ZAccommodation" type="hidden"> 
<input name="ZLandlord" type="hidden"> 
<input name="ZLandlordNum" type="hidden"> 
<input name="ZPreviousAddr1" type="hidden"> 
<input name="ZPreviousAddr2" type="hidden"> 
<input name="ZPreviousAddr3" type="hidden"> 
<input name="ZPreviousAddr4" type="hidden"> 
<input name="ZPreviousUnitNum" type="hidden"> 
<input name="ZPreviousCity" type="hidden"> 
<input name="ZPreviousProvince" type="hidden"> 
<input name="ZPreviousCode" type="hidden"> 
<input name="Zoccupation" type="hidden"> 
<input name="ZPresEmpName" type="hidden"> 
<input name="ZPresContactName" type="hidden"> 
<input name="ZPresContactPhone" type="hidden"> 
<input name="ZPresFaxNumber" type="hidden"> 
<input name="ZEmpAddress1" type="hidden"> 
<input name="ZEmpAddress2" type="hidden"> 
<input name="ZEmpAddress3" type="hidden"> 
<input name="ZEmpAddress4" type="hidden"> 
<input name="ZEmpUnitNum" type="hidden"> 
<input name="ZEmpCity" type="hidden"> 
<input name="ZEmpProvince" type="hidden"> 
<input name="ZEmpCode" type="hidden"> 
<input name="ZTypeOfBus" type="hidden"> 
<input name="ZPresPosition" type="hidden"> 
<input name="ZLengthService" type="hidden"> 
<input name="ZAnnualIncome" type="hidden"> 
<input name="ZTypeOfIncome" type="hidden"> 
<input name="ZPrevEmpName" type="hidden"> 
<input name="ZPrevEmpAddress1" type="hidden"> 
<input name="ZPrevEmpAddress2" type="hidden"> 
<input name="ZPrevEmpAddress3" type="hidden"> 
<input name="ZPrevEmpAddress4" type="hidden"> 
<input name="ZPrevEmpUnitNum" type="hidden"> 
<input name="ZPrevEmpCity" type="hidden"> 
<input name="ZPrevEmpProvince" type="hidden"> 
<input name="ZPrevEmpCode" type="hidden"> 
<input name="ZPrevLengthService" type="hidden"> 
<input name="ZPrevAnnualIncome" type="hidden"> 
<input name="ZIncomeType1" type="hidden"> 
<input name="ZIncomeAmount1" type="hidden"> 
<input name="ZIncomeType2" type="hidden"> 
<input name="ZIncomeAmount2" type="hidden"> 
<input name="ZIncomeType3" type="hidden"> 
<input name="ZIncomeAmount3" type="hidden"> 
<input name="ZIncomeType4" type="hidden"> 
<input name="ZIncomeAmount4" type="hidden"> 
<input name="ZNoteScreen" type="hidden"> 
<!--SOLICITOR______(HIDDEN)_________________________//-->
<!-- input name="SolicitorName" type="hidden"> 
<input name="SFirmName" type="hidden"> 
<input name="SAddress1" type="hidden"> 
<input name="SAddress2" type="hidden"> 
<input name="SAddress3" type="hidden"> 
<input name="SAddress4" type="hidden"> 
<input name="SUnitNum" type="hidden"> 
<input name="SCity" type="hidden"> 
<input name="SProvince" type="hidden"> 
<input name="SPostalCode" type="hidden"> 
<input name="SPhoneNumber" type="hidden"> 
<input name="SFaxNumber" type="hidden"--> 


<!--PROPERTY________________________________//-->
<!-- input name="PAddress1" type="hidden" />
<input name="PAddress2" type="hidden" />
<input name="PAddress3" type="hidden" />
<input name="PAddress4" type="hidden" />
<input name="PUnitNum" type="hidden" />
<input name="PCity" type="hidden" />
<input name="PProvince" type="hidden" />
<input name="PPostalCode" type="hidden" />
<input name="AgeBuilding" type="hidden" />
<input name="FPROPTYPE" type="hidden" />
<input name="FLIVABLEAREA" type="hidden" />
<input name="FLIVABLEAREAUNIT" type="hidden" />
<input name="PDwellStyle" type="hidden" />
<input name="LotWidth" type="hidden" />
<input name="LotDepth" type="hidden" />
<input name="LotUnit" type="hidden" />
<input name="GarageType" type="hidden" />
<input name="GarageSize" type="hidden" />
<input name="sAnnuTax" type="hidden" />
<input name="EstMonthHeating" type="hidden" />
<input name="MonthlyFee" type="hidden" />
<input name="sOccby" type="hidden" /-->
<input name="PropValueSource" type="hidden">
<input name="DatePurchased" type="hidden">
<input name="DownPayment" type="hidden">
<input name="LLotNumber" type="hidden"> 
<input name="LPlanNumber" type="hidden"> 
<input name="LConcessionNumber" type="hidden"> 
<input name="LTownship" type="hidden">
<input name="NumBedrooms" type="hidden">
<input name="NumUnits" type="hidden">
<input name="PTenure" type="hidden">
<input name="DEnvironmentHazard" type="hidden">
<input name="DHomeImprovement" type="hidden">
<input name="PLegalDesc1" type="hidden">
<input name="PLegalDesc2" type="hidden">
<input name="LotSize" type="hidden">
<input name="LotSizeUnit" type="hidden">
<input name="BuilderName" type="hidden">
<input name="Construction" type="hidden">


<table width="640">
<tr><td><hr/></td></tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="640">
	<tr>
		<td><p class="header">Property Information</span>
	<br>
	</td>
	</tr>
</table>

<table border="0" width="640" cellpadding="0" cellspacing="0">
<tr>
<td width="150"><br><span class="apply">Property Address:</span></td>
</tr>
<tr></tr></table>
<table border="0" width="640">
<tr vAlign="bottom">
<td>Number:
</font><br><input name="PAddress1" onchange="comaDel(this,5,0,0,3)" size="4"></td>
<td>Street Name:<br>
<input name="PAddress2" onchange="comaDel(this,25,0,0,0)" size="18"></td>
<td>Street Type:
<br><select name="PAddress3">
<option selected value=" ">choose
							<option value=" ">None
							<option value="Avenue">Avenue
							<option value="Boulevard">Boulevard
							<option value="Circle">Circle
							<option value="Court">Court
							<option value="Crescent">Crescent
							<option value="Drive">Drive
							<option value="Gate">Gate
							<option value="Lane">Lane
							<option value="Place">Place
							<option value="Road">Road
							<option value="Street">Street
							<option value="Terrace">Terrace
							<option value="Trail">Trail
							<option value="Way">Way</option>
</select>

</td>
    <td>Str. Dir.:
<br>
<select name="PAddress4">
<option selected value=" ">choose
<option value=" ">None
<option value="E">East
<option value="W">West
<option value="N">North
<option value="S">South
<option value="NE">North East
<option value="NW">North West
<option value="SE">South East
<option value="SW">South West</option>
</select>

</td>
    <td>Unit:
<br><input name="PUnitNum" onchange="comaDel(this,4,0,0,0)" size="3">
</td>
</tr>
</table>
<table width="640" border="0">
<tr vAlign="bottom">
<td>City/Town:

<br>
<input name="PCity" onchange="comaDel(this,15,1,0,0)" size="15"></td>
<td>Province:

<br><select name="PProvince">
<option selected value="">choose
				<option value="AB">Alberta
				<option value="BC">British  Columbia
				<option value="MB">Manitoba
				<option value="NB">New Brunswick
				<option value="NF">Newfoundland
				<option value="NS">Nova Scotia
				<option value="NT">Northwest Territories
				<option value="NU">Nunavut
				<option value="ON">Ontario
				<option value="QC">Quebec
				<option value="PE">P.E.I.
				<option value="SK">Saskatchewan
				<option value="YK">Yukon
</option>
</select>
</td>
<td>Postal Code:
<br>
<span class="newtext">
<input name="PPostalCode" onblur="postDel(this,6,0,2,0)" onBlur="comaDel(this,6,0,2,0)" size="8"></td></tr></table>


<table width="640" cellpadding="0" cellspacing="0" border="0">
<tr><td><hr/></td></tr>
</table>	

<table border="0" width="640" cellpadding="0" cellspacing="0">
<tr><td colSpan="2"><span class="apply">Property Description:</td>
</tr>
</table>
<table width="640" cellpadding="0" cellspacing="0" border="0">
<tr>

<td>Age(years):<br/>
<input name="AgeBuilding" onchange="comaDel(this,3,0,0,3)" size="3"></td>
<!--td>Property Type:
<br><select name="FPROPTYPE">
<option selected value=" ">choose
<option value="1">Detached
<option value="2">Semi detached
<option value="3">Row Housing
<option value="4">Duplex - Detached
<option value="5">Duplex - Semi detached
<option value="6">Apartment - Low rise
<option value="7">Apartment - High rise
<option value="8">Mobile Home
<option value="9">Triplex - Detached
<option value="10">Triplex - Semi detached
<option value="11">Stacked
<option value="12">Modular Home - Detached
<option value="13">Modular Home - Semi detached
<option value="14">Four plex - Detached
<option value="15">Four plex - Semi detached
</option>
</select>

</td-->

<td width="80" align="center">Livable Area 
		<br>
		<input name="FLIVABLEAREA" onchange="comaDel(this,6,0,0,3)" size="6">
	</td>
<td width="120" align="center">Livable Area Units:
		<br>
		<select name="FLIVABLEAREAUNIT">
		<option selected value="1">Feet
		<option value="0">Metres
		</option>
		</select>
	</td>	

<td width="20"></td>
<!--td align="left">Dwelling Style:<br>
<select name="PDwellStyle">
<option selected value="">choose
<option value="01 - One Storey">One Storey
<option value="02 - Bi-level">Bi-Level
<option value="03 - Two storey">Two-Storey
<option value="04 - Split level">Split Level
<option value="05 - Storey and a half">Storey and a half
<option value="06 - Three Storey">Three Storey
</option>
</select>
</span>
</td-->
</tr>
</table>
<table>
<tr>
<td colSpan="3">
</td></tr></table>
<table width="640" border="0">
	
<tr>

	<td width="80" align="center">Lot Width: 
		<br>
		<input name="LotWidth" onchange="comaDel(this,3,0,0,3)" size="3">
	</td>
	<td width="10" align="center">
		<strong><font face="Arial">X</font></strong>
	</td>

	<td width="80" align="center">Lot Depth:<br>
		<input name="LotDepth" onchange="comaDel(this,3,0,0,3)" size="3">
	</td>
	<td width="80" align="center">Units:
		<br>
		<select name="LotUnit">
		<option selected value="1">Feet
		<option value="0">Metres
		</option>
		</select>
	</td>
<td width="100"></td>

	<td width="125" align="center">Garage Type:
<br>
		<select name="GarageType">
		<option selected value="N/A">choose
		<option value="01">Attached
		<option value="02">Detached
		<option value="03">None
		</option>
		</select>
	</td>	
	<td align="center" width="100">Garage Size
		<br><select name="GarageSize">
		<option selected value="N/A">choose
		<option value="01">Single
		<option value="02">Double
		<option value="03">Triple
		<option value="04">None
		</option></select>
	</td>
	<td align="center" width="100">Heat Source
    <br/><select name="GarageHeat">
          <option selected value="">choose
          <option value="01">Electric Baseboard
          <option value="02">Forced Air/Oil/Electric
          <option value="03">Hot Water Heating
          <option value="-1">Other</OPTION></SELECT>
   </td> 
</tr>
</table>
<table>
			<td width="120">Estimated<br>Property Taxes:
			<input name="sAnnuTax" onchange="comaDel(this,8,0,0,3)" size="8">			
			</td>
			<td width="120">Estimated<br>Monthly Heating:
			<input name="EstMonthHeating" onchange="comaDel(this,8,0,0,3)" size="8">			
			</td>

			<td width="120">Estimated<br>Monthly condo Fees:<br>
			<input name="MonthlyFee" onchange="comaDel(this,8,0,0,3)" size="8">			
			</td>						


<td width="20"></td>
<td><br>Occupied By:<br>
				<select name="sOccby"> 
				<option selected value=" ">choose
				<option value="A">Applicant
				<option value="T">Tenant
				<option value="B">Both
				</option>
			</select>
</td>			
</tr>
</table>
<table width="640" border="0">
<tr><td>Note: Please provide Property and Dwelling Type in the Notes section</td></tr>
</table>
<!----------------------------------------------------------------------------------------->
<br>
<input name="Csalutation" type="hidden"/>

<table width="640" cellpadding="0" cellspacing="0" border="0">
<tr><td><hr/></td></tr>
<table>



<!--FINANCIAL_______________________________//-->

<table border="0" width="640" cellpadding="0" cellspacing="0">
   <tr>
        <td> <p class="header">Financial Information</span></td>
   </tr>
</table>



<!-- input name="ADeposit" type="hidden"/>
<input name="AProperties" type="hidden"/>
<input name="APropertiesValue" type="hidden"/>
<input name="AInvestments" type="hidden"/>
<input name="AInvestmentsValue" type="hidden"/>
<input name="ARRSP" type="hidden"/>
<input name="ARRSPValue" type="hidden"/-->


<table border="0" cellPadding="0" cellSpacing="0" width="640">
      
      <tr>
        <td>
<table border="0" align="center" cellPadding="0" cellSpacing="0" width="640">
            <tr>
              <td colSpan="4">
             <span class="apply">Assets</span></td></tr>
            
            <tr>
              <td><span class="apply">Type</td>
              <td align="center"><span class="apply">Where/Financial<br>Institution(s)</td>
              <td align="center"><span class="apply">Amount/ Value</td>
              <td>&nbsp;</th>
            <tr>
              <td bgcolor="#EEEEEE">Cash savings</span></td>
              <td bgcolor="#EEEEEE" align="middle"><input name="ACIB" onchange="comaDel(this,15,0,0,0)"></td>
              <td bgcolor="#EEEEEE" align="middle">$<input name="ACIBValue" onblur="comaDel(this,8,0,0,3);networths(this);" size="8" id="acibValue"></td>
              <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on Cash In Bank'; return true"><img alt="Help" border="0" src="images/b2b_help_en.gif"></a></td>
            <tr>
              <td>Deposit on property being purchased 
                <br>(if applicable)</span></td>
              <td align="middle">&nbsp;</td>
              <td align="middle">$<input name="ADeposit" onblur="comaDel(this,8,0,0,3);networths(this);" size="8" id="depositValue"></td>
              <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on Deposit On Property Being Purchased'; return true"><img alt="Help" border="0" src="images/b2b_help_en.gif"></a></td>
            </tr>
            <tr>
              <td bgcolor="#EEEEEE">RRSP's</span></td>
              <td bgcolor="#EEEEEE" align="middle"><input name="ARRSP" onchange="comaDel(this,25,1,0,0)"></td>
              <td bgcolor="#EEEEEE" align="middle">$<input name="ARRSPValue" onblur="comaDel(this,8,0,0,3);networths(this);" size="8" id="rrspValue"></td>
              <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on RRSPs'; return true"><img alt="Help" border="0" src="images/b2b_help_en.gif"></a></td>
            </tr>
			       <tr>
              <td>Automobile: present value</span></td>
              <td align="middle"><input name="AAutomobile" onchange="comaDel(this,25,0,0,0)"></td>
              <td align="middle">$<input name="AAutoValue" onblur="comaDel(this,8,0,0,3);networths(this);" size="8" id="autoValue"></td>
              <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on Automobile Value'; return true"><img alt="Help" border="0" src="images/b2b_help_en.gif"></a></td>
            </tr>
			       <tr>
              <td  bgcolor="#EEEEEE">Value of present home<br>(if owned)</span></td>
              <td  bgcolor="#EEEEEE" align="middle">&nbsp;</td>
              <td  bgcolor="#EEEEEE" align="middle">$<input name="AHomeValue" onblur="comaDel(this,8,0,0,3);networths(this);" size="8" id="homeValue"></td>
              <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on Value Of Present Home'; return true"><img alt="Help" border="0" src="images/b2b_help_en.gif"></a></td>
            </tr>
            <tr>                     
      				<td>Other</td>
      				<td align="middle"><input name="AOther" onchange="comaDel(this,25,1,0,0)"></td>
      				<td align="middle">$<input name="AOtherValue" onblur="comaDel(this,8,0,0,3);networths(this);" size="8" id="otherValue"></td>
      				<td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on Other Assets'; return true"><img alt="Help" border="0" src="images/b2b_help_en.gif"></a></td>
            <tr>
			     <!-- tr>
              <td bgcolor="#EEEEEE">Investment/vacation properties</span></td>
              <td bgcolor="#EEEEEE" align="middle"><input name="AProperties" onchange="comaDel(this,25,1,0,0)"></td>
              <td bgcolor="#EEEEEE" align="middle">$<input name="APropertiesValue" onblur="comaDel(this,8,0,0,3);networths(this);" size="8" id="propertiesValue"></td>
              <td align="middle"><a href="javascript:winopen1('help-vacation.asp')" onmouseover="self.status='Help on Investment/Vacation Properties'; return true"><img alt="Help" border="0" src="images/b2b_help_en.gif"></a></td>
            </tr-->
			<!--tr>
              <td>Stocks, bonds, Mutual funds etc.</span></td>
              <td align="middle"><input name="AInvestments" onchange="comaDel(this,25,1,0,0)"></td>
              <td align="middle">$<input name="AInvestmentsValue" onblur="comaDel(this,8,0,0,3);networths(this);" size="8"></td>            
			  <td align="middle"><a href="javascript:winopen1('help-stocks.asp')" onmouseover="self.status='Help on Stocks, Bonds, Mutual Funds etc.'; return true"><img alt="Help" border="0" src="images/b2b_help_en.gif"></a></td>
			</tr-->
          <tr>  
              <td bgcolor="#EEEEEE" align="left"><b>Total</b></td>
              <td bgcolor="#EEEEEE" align="middle"><br></td>
              <td bgcolor="#EEEEEE" align="middle">$<input name="ATotalValue" onchange="comaDel(this,10,0,0,3);networthx();" size="8" id="aTotalValue"></td>
              <td>&nbsp;</td>
          </tr></table></td></tr></table>
    <table>
      
      <tr>
        <td>
          
        </td></tr></table>
		

<!--input name="LAutoLoan" type="hidden"/>
<input name="LAutoBalance" type="hidden"/>
<input name="LAutoPayment" type="hidden"/>
<input name="LMortgage2" type="hidden"/>
<input name="LMortgageBalance2" type="hidden"/>
<input name="LMortgagePayment2" type="hidden"/>
<input name="LMortgageNum" type="hidden"/>
<input name="LChildSupport" type="hidden"/>
<input name="" type="hidden"/-->

		
		
<table width="640" cellpadding="0" cellspacing="0" border="0">
<tr><td><hr/></td></tr>
</table>	        

    <table border="0" cellPadding="0" cellSpacing="0" width="640">
      
      <tr>
        <td>
          <table border="0" cellPadding="1" cellSpacing="0" width="640">
            <tr>
              <td colSpan="5">
                <span class="apply">Liabilities</span></td></tr>
            <tr>
              <td width="150"><span class="apply">Type</td>
              <td width="150" align="center"><span class="apply">Where/Financial<br>Institution(s)</td>
              <td width="125" align="center"><span class="apply">Balance Owing</td>
              <td width="129" align="center"><span class="apply">Monthly Payment</td>
              <td>&nbsp;</td>
			</tr>
            <tr>
              <td bgcolor="#EEEEEE" width="100">Debts / Loans</span></td>
              <td bgcolor="#EEEEEE" align="middle"><input name="LBankLoans" onchange="comaDel(this,15,1,0,0)" size="15"></td>
              <td bgcolor="#EEEEEE" align="middle">$<input name="LLoanBalance" onblur="comaDel(this,8,0,0,3);networths(this)" size="8" id="loanBalance"></td>
              <td bgcolor="#EEEEEE" align="middle">$<input name="LLoanPayment" onblur="comaDel(this,8,0,0,3);networths(this)" size="8" id="loanPayment"></td>
              <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on Bank Loans'; return true"><img alt="Help" border="0" src="images/b2b_help_en.gif"></a></td>
            </tr>
            <tr>
              <td>Credit Cards</span></td>
              <td align="middle"><input name="LCreditCards" onchange="comaDel(this,15,1,0,0);" size="15"></td>
              <td align="middle">$<input name="LCardBalance" onblur="comaDel(this,8,0,0,3);networths(this)" size="8" id="cardBalance"></td>
              <td align="middle">$<input name="LCardPayment" onblur="comaDel(this,8,0,0,3);networths(this)" size="8" id="cardPayment"></td>
              <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on Credit Cards'; return true"><img alt="Help" border="0" src="images/b2b_help_en.gif"></a></td>
            </tr>
            <tr>
              <td bgcolor="#EEEEEE">Owing on automobile</span><br></td>
              <td bgcolor="#EEEEEE" align="middle"><input name="LAutoLoan" onchange="comaDel(this,25,1,0,0)" size="15"></td>
              <td bgcolor="#EEEEEE" align="middle">$<input name="LAutoBalance" onblur="comaDel(this,8,0,0,3);networths(this)" size="8" id="autoBalance"></td>
              <td bgcolor="#EEEEEE" align="middle">$<input name="LAutoPayment" onblur="comaDel(this,8,0,0,3);networths(this)" size="8" id="autoPayment"></td>
              <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on Owing On Automobile'; return true"><img alt="Help" border="0" src="images/b2b_help_en.gif"></a></td>
            </tr>
            <tr>
              <td>Amount owing on current mortgage(s)</span></td>
              <td align="middle"><input name="LMortgage" onchange="comaDel(this,30,1,0,0)"></td>
              <td align="middle">$<input name="LMortgageBalance" onblur="comaDel(this,8,0,0,3);networths(this)" size="8" id="mortgageBalance"></td>
              <td align="middle">$<input name="LMortgagePayment" onblur="comaDel(this,8,0,0,3);networths(this)" size="8" id="mortgagePayment"></td>
              <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on Amount Owing On Current Mortgage(s) - 1'; return true"><img alt="Help" border="0" src="images/b2b_help_en.gif"></a></td>
            </tr>
            <tr>
              <td bgcolor="#EEEEEE">Amount owing on current mortgage(s) -2</span></td>
              <td bgcolor="#EEEEEE" align="middle"><input name="LMortgage2" onchange="comaDel(this,30,1,0,0)"></td>
              <td bgcolor="#EEEEEE" align="middle">$<input name="LMortgageBalance2" onblur="comaDel(this,8,0,0,3);networths(this)" size="8" id="mortgage2Balance"></td>
              <td bgcolor="#EEEEEE" align="middle">$<input name="LMortgagePayment2" onblur="comaDel(this,8,0,0,3);networths(this)" size="8" id="mortgage2Payment"></td>
              <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on Amount Owing On Current Mortgage(s) - 2'; return true"><img alt="Help" border="0" src="images/b2b_help_en.gif"></a></td>
            </tr>
            <!--tr>
              <td>Mortgage Number(s) of Current Mortgage(s)</span></td>
              <td align="middle"><input name="LMortgageNum" onchange="comaDel(this,12,0,0,0)" size="15"></td>
              <td>&nbsp;<br></td>
              <td>&nbsp;<br></td>
              <td align="middle"><a href="javascript:winopen1('help-mtgnum.asp')" onmouseover="self.status='Help on Mortgage Numbers Of Current Mortgages'; return true"><img alt="Help" border="0" src="images/b2b_help_en.gif"></a></td>
            </tr-->
            <tr>
              <td>Finance company loans and other debts</span> <br></td>
              <td align="middle"><input name="LFinanceCompany" onchange="comaDel(this,25,1,0,0)"></td>
              <td align="middle">$<input name="LFinanceBalance" onblur="comaDel(this,8,0,0,3);networths(this)" size="8" id="financeBalance"></td>
              <td align="middle">$<input name="LFinancePayment" onblur="comaDel(this,8,0,0,3);networths(this)" size="8" id="financePayment"></td>
              <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on Finance Company Loans And Other Debts'; return true"><img alt="Help" border="0" src="images/b2b_help_en.gif"></a></td>
            </tr>
            <tr>
              <td bgcolor="#EEEEEE">Alimony/Child Support</span></td>
              <td bgcolor="#EEEEEE" align="middle"><br></td>
              <td bgcolor="#EEEEEE" align="middle"><br></td>
              <td bgcolor="#EEEEEE" align="middle">$<input name="LChildSupport" onblur="comaDel(this,8,0,0,3);networths(this);" size="8" id="alimonyPayment"></td>
              <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on Alimony &amp; Child Support'; return true"><img alt="Help" border="0" src="images/b2b_help_en.gif"></a></td>
            </tr>
            <tr>
              <td align="left" class="app_tablemainhdr">Total</th>
              <td align="middle" class="app_tablemainhdr"><br></td>
              <td align="middle">$<input name="LTotal" onchange="comaDel(this,10,0,0,3);networthx()" size="8" id="lTotal"></td>
              <td align="middle">$<input name="LTotalPayment" onchange="comaDel(this,10,0,0,3);networthx();" size="8" id="lTotalPayment"></td>
              <td>&nbsp;</td></tr></table></td>
			</tr>
		</table><br>
			 
    <table border="0" align="center" cellPadding="0" cellSpacing="0" width="640">
      
      <tr>
        <td align="left" class="app_tablemainhdr">Net Worth (Total Assets - 
          Total Liabilities) = $<input name="LNetWorth" onchange="comaDel(this,10,0,0,3);networthx();" size="10" id="lNetWorth"></td> 
      <tr></tr></table>
      
      
    <p>
    <table border="0" width="640">
    <tr><td><hr/></td></tr>
    <tr>
      <td><span class="apply">Other Information</span><td></tr>  
	<!--tr>
	<td>Investment Advisor Name: &nbsp;</td><td><input name="FAgentName" onblur="comaDel(this,25,1,0,0)" size="25"></td>
	</tr-->

	<!--tr>
	<td>Real Estate Office Name: &nbsp;</td><td><input name="FOfficeName" onblur="comaDel(this,25,0,0,0)" size="25"></td>
	</tr>

	<tr>
	<td>AIR MILES Collector Number &nbsp;</td><td><input name="FAirMiles" onblur="comaDel(this,25,0,0,0)" size="25"></td>
	</tr-->
	<!--tr><td><big><b>References are to be included in the Notes Section.</b></big></td></tr-->
	<tr><td><br></td></tr>	
      <tr>
        <td colSpan="3">Additional Note for Financial Information: (Max. 500 Characters)<br></td>
      <tr>
        
        <td colSpan="3"><textarea name="LNoteScreen" COLS="72" ROWS="5" maxlength="500" onchange="comaDel(this,500,0,0,0)" onKeyPress="if (getElementById('lNoteScreen').value.length > 500 ) alert('You have reached the 500-Character limit!');"  onMouseDown="if (getElementById('lNoteScreen').value.length > 500 ) alert('You have reached the 500-Character limit!');" id="lNoteScreen"></textarea>
        <!--<td colSpan=3><input maxLength=100 name=LNoteScreen onchange=comaDel(this,100,0,0,0) size=45>-->
		</td>
		</td></tr>
</table>

<!--input name="FAgentName" type="hidden"/>
<input name="FOfficeName" type="hidden"/-->
<input name="FAirMiles" type="hidden"/>


			<input name="INGMtgLifeIns" type="hidden">   
			<input name="DFirstTimeBuyer" type="hidden"> 
			<input name="DCustomerSince" type="hidden"> 
			<input name="DOriginalDate" type="hidden"> 
			<input name="DOriginalAmount" type="hidden"> 
			<input name="DBranchAddress1" type="hidden"> 
			<input name="DBranchAddress2" type="hidden"> 
			<input name="DBranchAddress3" type="hidden"> 
			<input name="DBranchAddress4" type="hidden"> 
			<input name="DUnitNum" type="hidden"> 
			<input name="DCity" type="hidden"> 
			<input name="DProvince" type="hidden"> 
			<input name="DPostalCode" type="hidden"> 
<!--HIDDEN FIELDS___________________________//-->
			<input name="DResult" type="hidden"> 
			<input name="DNetLoan" type="hidden"> 
			<input name="DMortgageInsFee" type="hidden"> 
			<input name="DTotalLoan" type="hidden"> 
			<input name="DLoanPurpose" type="hidden"> 
			<input name="DInterestRate" type="hidden"> 
			<input name="DTerm" type="hidden"> 
			<input name="DAmortization" type="hidden"> 
			<input name="DLoanValueRatio" type="hidden"> 
			<input name="DGDS" type="hidden"> 
			<input name="DTDS" type="hidden"> 
			<input name="DPayment" type="hidden"> 
			<input name="DPaymentChoice" type="hidden"> 
			<input name="BLenderCode" type="hidden" value="INA01"> 
			<input name="AreaBuildingUnit" type="hidden"> 
			<input name="Occupancy" type="hidden"> 
			<input name="BuildingType" type="hidden"> 
			<input name="SewageWater" type="hidden"> 
			<input name="AnnualTax" type="hidden"> 
			<input name="AnnualHeat" type="hidden"> 
			<input name="PropValue" type="hidden"> 
			<input name="EstimatedValue" type="hidden"> 
			<input name="AreaBuilding" type="hidden"> 
			<input name="DTypeMortgage" type="hidden"> 
			<input name="DCurrentBalance" type="hidden"> 
			
<!--SUBMIT__________________________________//--><!--/form-->


<table border="0" width="600" cellpadding="0" cellspacing="0" ID="Table1">
			<tr><td><br><br></td></tr>
				<tr>
					<td>
							
							<!--include virtual= "\centralRep\PIPEDA.asp"-->
							<hr/>
<span class="apply">Terms and Conditions</span>
<br/><br/>
<textarea readonly cols="90" rows="6">
Personal Information:
B2B Bank collects personal information including certain credit, employment, and other financially-related information (“Personal Information”) from its clients, and if necessary, from their surety (guarantor) and other sources, as described below. B2B Bank makes use of this personal information in the context of activities it generally carries out, including but without limiting the generality of the foregoing: verifying the identity of its clients, opening an account or a loan, understanding the overall financial situation of a client and adequately delivering products and services.

To this end, 
a) I authorize B2B Bank, its affiliates and service providers acting on its behalf to:
i) obtain information regarding my solvency or financial situation, as may be required from time to time for the purposes provided herein including the applicant and co-applicant’s identification and until full payment of any amount as may be owing to B2B Bank, from legally authorized persons as well as from any personal information agent, any person referred to in credit reports obtained, any financial institution, any mortgage insurer or any other person providing references, from my current or previous employer mentioned in the application, and I authorize such persons to disclose the information requested;
ii) disclose the information it holds on myself to any person authorized by law, personal information agent, financial institution, mortgage insurer or any organization duly designated by B2B Bank according to paragraph (c) below, or with my consent, to any person who so requests it;
iii) use my social insurance number for income tax reporting, identification and data-grouping purposes regarding services offered by B2B Bank;
iv) make my personal information available to its employees, affiliates and services providers who are bound to protect the confidentiality of information.
In granting this authorization, I acknowledge that I am giving B2B Bank permission to request and access my credit report from credit reporting agencies.
b) You may at all times, without notifying me, assign my account to any person. The assignee may be required by applicable laws to retain my personal information for a certain period of time.
c) With a view to benefiting from high-quality service and obtaining all information available regarding the financial products offered by B2B Bank, its affiliates or any enterprise that has been duly designated by B2B Bank, I authorize B2B Bank, its affiliates and any enterprise duly designated by B2B Bank to make use of the information it holds in my regard in order to communicate any background documentation, advertisement or information to me. I understand that the employees and authorized representatives of B2B Bank and its affiliates will use my personal information only to the extent that such personal information is necessary or useful for the performance of their duties. I am entitled to request that B2B Bank refrain from using the information for the purposes set out in this paragraph at any time by providing written notice to B2B Bank. B2B Bank will not refuse to provide the services described herein, in the event that I am entitled to them, even if I have revoked my authorization regarding the use of this personal information.
d) In the case of services rendered by B2B Bank from a foreign country, I understand that B2B Bank may be required to disclose my personal information to regulatory authorities in the foreign jurisdiction, as per applicable laws;
e) I authorize B2B Bank to disclose and share information in cases of fraud, inquiry, or breach of any financing agreement with competent authorities. 
f) I authorize B2B Bank to disclose and share information with other financial institutions when inter-bank communication is required to prevent or control fraud, during inquiries for breach of any financing agreement, or any statutory violation.
g) Any file with which I am concerned will be kept at the appropriate department at B2B Bank. B2B Bank will allow me to examine information to which I am entitled by law, and I may obtain a copy of such information upon payment of amounts charged by B2B Bank and upon written request to B2B Bank. 
</textarea>
<br/><br/>
<hr/>
<span class="apply">Online Applications</span>
<br><br>
Please read the paragraph above prior to sending completed application.

							
					</td>
				</tr>
			<tr><td><br><br></td></tr>
</table>

<table>
  <tr>
    <td>
      <input type="checkbox" name="ack" id="ack">I/we have read, understood and agree to the terms outlined above.  By transmitting this online application I/we are accepting the terms.
    </td>
  </tr>
</table>
</form>
<table cellPadding="2" cellSpacing="2" width="640" border="0" align="center">
  
  <tr>
    <td width="200" align="center"><a href="javascript:saveCooks()" onmouseover="self.status='Save Your Data';return true;"><img alt="Save Your Data" border="0" src="images/LSM_buttonstore_en.gif"></a>&nbsp;</td><td width="200"><a href="javascript:ControlSub();" onmouseover="parent.status='Send Application';return true;"><img alt="Send Application" border="0" src="images/send_application_en.gif"></a>&nbsp;</td><td width="200"><a href="javascript:reloadCooks()" onmouseover="self.status='Reload Data';return true;"><img alt="Reload Data" border="0" src="images/reload_data_en.gif"></a></td>
  </tr>
  <tr>
    <td>
      <span class="mandatory">*</span>  Mandatory field
    </td>
  </tr>      
</table><!-- Back & Next Buttons -->


    <!--tr VALIGN="bottom">
		<tr>
			<td>
		<!--include file= "..\proclib\centum_footer.asp"->
			</td>
		</tr-->	
</table>

</body>
</html>