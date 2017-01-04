<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>B2B Banque - Faites une demande hypoth&#232;caire maintenant!</title>
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
&nbsp;

<table width="640" border="0" align="center" cellPadding="0" cellSpacing="0">
<tr>
		<td>
			<table border="0" cellPadding="0" cellSpacing="0" width="640">
			<tr>
			   <td colspan="2" align="right"><input type="button" name="toggle" value="English" onClick="javascript:go_english();"/></td>
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
			    <td align="left"><a href="javascript:reloadCooks()" onmouseover="self.status='Reload Data';return true;"><img alt="Reload Data" border="0" src="images/reload_data_fr.gif"></a> 
			    </td>
			    <td align="right"><span class="mandatory">*</span>Champ obligatoire.
			    </td></tr>
			</table>

    <!--APPLICANT 1______________________________//-->
    
      <table border="0" width="640" cellpadding="0" cellspacing="0">
        <tr><td colspan="3"><hr class="wide" width="640"></td></tr>
        <tr>
          <td>Num&#232;ro de fiche d&#96;indication<span class="mandatory">&nbsp;*</span></td>
          <td><input name="FOfficeName" id="fOfficeName" onblur="comaDel(this,25,0,0,0)" size="25"></td>
          <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Aide pour: Num&#232;ro de fiche d`indication'; return true"><img alt="Help" border="0" src="images/b2b_help_fr.gif"></a></td>
        </tr>
        <tr>
          <td>Repr&#232;sentant financier</td>
          <td><input name="FAgentName" onblur="comaDel(this,25,1,0,0)" size="25" id="fAgentName"></td>
        </tr>
        <tr>
          <td>Meilleure heure pour appeler</td>
          <td><input type="text" size="45" id="prefContactDateTime" name="prefContactDateTime"/></td>
          <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Aide pour: Meilleure heure pour appeler'; return true"><img alt="Help" border="0" src="images/b2b_help_fr.gif"></a></td>
        </tr>
        <tr>
          <td>Num&#232;ro de t&#232;l&#232;phone</td>
          <td><input type="text" onchange="comaDel(this,10,0,0,4); checkPhoneNumberLength(this)" size="12" id="bestContactNumber" name="bestContactNumber"/></td>
        </tr>
      
      </table>
			<table border="0" width="640" cellpadding="0" cellspacing="0">
				<tr><td><hr/></td></tr>
				<tr>
					<td>
						 <p class="header">D&#232;tails de l'hypoth&#232;que</span>
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
		<td>Valeur de la maison:<br/><input name="FHomeValue" onblur="comaDel(this,8,0,0,3)" size="8" id="fHomeValue"></td>
		<td>Montant de<br/>l'hypoth&#232;que:<br/><input name="FMortgageAmountRequested" onblur="comaDel(this,8,0,0,3)" size="15" id="fMortgageAmountRequested"></td>		
		<td>Date de r&#232;glement<br/>estim&#232;:<font size="1">(MMJJAAAA)</font>&nbsp;<br/>
        <input name="FApproxDate" onchange="comaDel(this,8,0,0,3);CloDChk(this,8);" size="10" maxlength="8" id="fApproxDate"></td>
	</tr>
	
	<tr>
	   <td>Terme:<br/><input name="FTERM" onblur="comaDel(this,8,0,0,3)" size="5" id="fterm">Ans&nbsp;
	      <input name="FMTERM" onblur="comaDel(this,8,0,0,3);checkMonths(this,'Term Months');" size="5" id="fmterm">Mois</td>
	   <td>P&#232;riode d'amortissement:<br/><input name="FAMORT" onblur="comaDel(this,8,0,0,3)" size="5" id="famort">Ans
	   <td>Fr&#232;quence des paiements:<br/>
	       <select name="pay_freq">
		        <option value="">CHOISISSEZ SVP
		        <option value="M" SELECTED>Mensuel
		        <option value="S">Deux fois par mois
		        <option value="B">Aux deux sem. (acc&#232;l&#232;re)
            <option value="W">Aux sem. (acc&#232;l&#232;re)</option>
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
			 <p class="header">Premier demandeur - Renseignements personnels</span>
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
	    <!--td>Title:<span class="mandatory">&nbsp;*</span> <br>
			<select name="Bsalutation"> 
			<option selected value="N/A">Choisissez
			<option value="Mr.">Mr.
			<option value="Mrs.">Mrs.
			<option value="Miss.">Miss.
			<option value="Ms.">Ms.
			<option value="Dr">Dr.
			<option value="Rev.">Rev.
			</option>
			</select>
		</td-->
	    
		<td>Pr&#232;nom:<span class="mandatory">&nbsp;*</span>
			<br>
			<input name="BFirstName" onchange="comaDel(this,15,1,0,0)" size="15" id="bFirstName">
		</td>
	    
		<td>Nom:<span class="mandatory">&nbsp;*</span>
		<br>
		<input name="BLastName" onchange="comaDel(this,20,1,0,0)" size="20" id="bLastName">
		</td>	
	    

		<td>Initial:<br><input name="BGivenName" onchange="comaDel(this,1,1,0,0)" size="2"> 
		</td>
		<td>Date de naissance:<br><font size="1">(MMJJAAAA)</font><span class="mandatory">&nbsp;*</span>
		<br>
		<input name="BDOB" type="text" onchange="comaDel(this,8,0,0,3);chekDat(this,8);" size="10" maxlength="8" width="500px" id="bDOB"/>
		</td>
	</tr>	
</table>
<table border="0" width="640" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF">	
	<tr vAlign="bottom">
		<td>NAS#:<span class="mandatory">&nbsp;
		<br>
		<input name="BBorrowerSIN" onblur="getit(this);comaDel(this,9,0,0,4);" size="11">&nbsp;&nbsp;
		</td>
		
    <td colSpan="4">Adresse &#232;lectronique:
	 	   <br><input name="BEmailAddr" onblur="emailCheck(this.value,1)" maxlength="50" size="30" id="bEmailAddr">		
		</td>
		
		
      <td>Nbre de personnes &#224; charge:<br/>
      <input type="text" size="2" name="BDependents" onBlur="comaDel(this,2,0,0,3)" id="bDependents">		
      </td>
      <td>&#232;tat civil:<br/>
      <select name="BMaritalStatus">
        <option value="">Choisissez
        <option value="S">C&#232;libataire
        <option value="M">Mari&#232;
        <option value="P">S&#232;par&#232;
        <option value="D">Divorc&#232;
        <option value="W">Veuf/Veuve
        <option value="C">Conjoint de fait
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
		<td colspan="5"><span class="apply">Adresse actuelle</span></td></tr>
	<tr vAlign="bottom">
		<td>Num&#232;ro civique:<span class="mandatory">&nbsp;*</span><br><input name="BAddress1" onchange="comaDel(this,5,0,0,3)" size="4" id="bAddress1"></td>
		<td>Nom de la rue:<span class="mandatory">&nbsp;*</span><br><input name="BAddress2" onchange="comaDel(this,25,0,0,0)" size="18" id="bAddress2"></td>
		<td>Type de rue:<br>
					<select name="BAddress3" id="bAddress3"> 
							<option selected value=" ">Choisissez
							<option value=" ">Aucun
							<option value="Avenue">Avenue
							<option value="Boulevard">Boulevard
							<option value="Cercle">Cercle
							<option value="Chemin">Chemin
							<option value="Rue">Rue
							</option>
					</select> 
		</td>
		<td>Orientation de la rue:<br>
					<select name="BAddress4" size="1" id="bAddress4"> 
					<option selected value=" ">Choisissez
					<option value=" ">Aucun
					<option value="E">Est
					<option value="W">Ouest
					<option value="N">Nord
					<option value="S">Sud
					<option value="NE">Nord-Est
					<option value="NW">Nord-Ouest
					<option value="SE">Sud-Est
					<option value="SW">Sud-Ouest
					</option>
					</select>
		</td>
		<td>Unit&#232;:
		<br>
		<input name="BCurrentUnitNum" onchange="comaDel(this,4,0,0,0)" size="3" id="bCurrentUnitNum"></td>
	</tr>
</table>
<!--<center>-->
<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">        
	<tr vAlign="bottom">
        <td width="80">Ville:<span class="mandatory">&nbsp;*</span><br/>		
		<input name="BCurrentCity" onchange="comaDel(this,15,1,0,0)" size="15" id="bCurrentCity"></td>
        <td width="175">Province:
		<span class="mandatory">&nbsp;*</span><br>	
				<select name="BCurrentProvince" id="bCurrentProvince"> 
				<option selected value="">Choisissez
				<option value="AB">Alberta
				<option value="BC">Colombie Britannique
				<option value="PE">Ile-du-Prince-&#232;douard
				<option value="MB">Manitoba
				<option value="NB">Nouveau Brunswick
				<option value="NS">Nouvelle Ecosse
				<option value="NU">Nunavut
				<option value="ON">Ontario
				<option value="QC">Quebec
				<option value="SK">Saskatchewan
				<option value="NF">TerreNeuve
				<option value="NT">Territoires du Nord-Ouest
				<option value="YK">Yukon
				</option>
				</select> 
		</td>
		<td align="left" width="100">Code Postal:<span class="mandatory">&nbsp;*</span><br/>
		
		<input name="BCurrentCode" onblur="postDel(this,6,0,2,0);" onchange="/*comaDel(this,6,0,2,0);*/" size="8" id="bCurrentCode"></td>
		
		<td width="150" vAlign="bottom"><br>Type de logement:
					<span class="mandatory">&nbsp;*</span><br>
					<select name="BAccommodation" id="bAccommodation"> 
					<option selected value="N/A">Choisissez
					<option value="Own">Proprietaire
					<option value="Rent">Locataire
					<option value="Live with parents">Vis chez les parents
					<option value="Other">Autre
					</option>
					</select>
			</td>
		
		</tr>
		<tr vAlign="bottom">
		<td>T&#232;l&#232;phone &#224; domicile:<span class="mandatory">&nbsp;*</span><br/>(incluez l'indicatif r&#232;gional)<br>
			<input name="BHomePhone" onchange="comaDel(this,10,0,0,4); checkPhoneNumberLength(this)" size="12" id="bHomePhone">
		</td> 
		
		
  		<td colspan="2" align="left">Paiements Mensuels De Loyer:<br>
  				<input name="BLandlord" onchange="comaDel(this,8,0,0,3)" size="8"></td></tr> 
  		</td>
		
			<!--td width="150" vAlign="bottom"><br>Type de logement:
					<span class="mandatory">&nbsp;*</span><br>
					<select name="xBAccommodation"> 
					<option selected value="N/A">Choisissez
					<option value="Own">Proprietaire
					<option value="Rent">Locataire
					<option value="Live with parents">Vis chez les parents
					<option value="Other">Autre
					</option>
					</select>
			</td-->
			</tr>
			<!--DEV NOTE: BLandLord used for Rent Payments  ... mapped to RENT in MBase-->
			
			
  			<tr>
  				<td align="left" colspan=4>Temps pass&#232; &#224; cette adresse: (aamm)<br/>(ex. 4 ans & 2 mois = 0402)<br/>(Minimum de trois ann&#232;es requises. Fournir des adresses pr&#232;c&#232;dentes d&#232;tails dans la section Notes)<br/>
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
		<td colspan="5"><span class="apply">Adresse pr&#232;c&#232;dente</span></td></tr>
	<tr vAlign="bottom">
		<td>Num&#232;ro civique:<span class="mandatory">&nbsp;*</span><br><input name="BPreviousAddr1" onchange="comaDel(this,5,0,0,3)" size="4"></td>
		<td>Nom de la rue:<span class="mandatory">&nbsp;*</span><br><input name="BPreviousAddr2" onchange="comaDel(this,25,0,0,0)" size="18"></td>
		<td>Type de rue:<br>
					<select name="BPreviousAddr3"> 
							<option selected value=" ">Choisissez
							<option value=" ">Aucun
							<option value="Avenue">Avenue
							<option value="Boulevard">Boulevard
							<option value="Cercle">Cercle
							<option value="Chemin">Chemin
							<option value="Rue">Rue
							</option>
					</select> 
		</td>
		<td>Orientation de la rue:<br>
					<select name="BPreviousAddr4" size="1"> 
					<option selected value=" ">Choisissez
					<option value=" ">Aucun
					<option value="E">Est
					<option value="W">Ouest
					<option value="N">Nord
					<option value="S">Sud
					<option value="NE">Nord-Est
					<option value="NW">Nord-Ouest
					<option value="SE">Sud-Est
					<option value="SW">Sud-Ouest
					</option>
					</select>
		</td>
		<td>Unit&#232;:
		<br>
		<input name="BPreviousUnitNum" onchange="comaDel(this,4,0,0,0)" size="3"></td>
	</tr>
</table>

<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">        
	<tr vAlign="bottom">
        <td width="80">Ville:<span class="mandatory">&nbsp;*</span><br/>		
		<input name="BPreviousCity" onchange="comaDel(this,15,1,0,0)" size="15"></td>
        <td width="175">Province:
		<span class="mandatory">&nbsp;*</span><br>	
				<select name="BPreviousProvince"> 
				<option selected value="">Choisissez
				<option value="AB">Alberta
				<option value="BC">Colombie Britannique
				<option value="PE">Ile-du-Prince-&#232;douard
				<option value="MB">Manitoba
				<option value="NB">Nouveau Brunswick
				<option value="NS">Nouvelle Ecosse
				<option value="NU">Nunavut
				<option value="ON">Ontario
				<option value="QC">Quebec
				<option value="SK">Saskatchewan
				<option value="NF">TerreNeuve
				<option value="NT">Territoires du Nord-Ouest
				<option value="YK">Yukon
				</option>
				</select> 
		</td>
		<td align="left" width="100">Code Postal:<span class="mandatory">&nbsp;*</span><br/>
		
		<input name="BPreviousCode" onblur="postDel(this,6,0,2,0);" onchange="/*comaDel(this,6,0,2,0);*/" size="8"></td>
		</tr>
</table-->




<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<tr><td><hr/></td></tr>
	<tr>
        <td colspan="2"><span class="apply">Employeur actuel</span>
		</td>
	</tr>
</table>
<table border="0" width="640" bgcolor="#FFFFFF">	
	<tr vAlign="bottom">
		<td>Type d'occupation:<br>
				<select name="Boccupation" id="bOccupation"> 
				<option selected value="N/A">Choisissez
				<option value="01">Bureau
				<option value="02">Direction
				<option value="05">Professionnel
				<option value="04">Retraite
				<option value="03">Travailleur
				<option value="06">Travailleur autonome
				<option value="99">Autre
				</option>
				</select> 
		</td>
	        
		<td>Industrie:
		<br>
				<select name="BIndustrySector"> 
				<option selected value="N/A">Choisissez
				<option value="01">Construction
				<option value="02">Gouvernement
				<option value="03">Sant&#232;
				<option value="04">&#232;ducation
				<option value="05">Technologie
				<option value="06">Vente d&#232;tail
				<option value="07">Loisir/Divertissement
				<option value="08">Banque/Finance
				<option value="09">Transport
				<option value="10">Services
				<option value="11">Manufacture
				<option value="12">Fermes/Ressources naturelles
				<option value="99">Autre
				</option>
				</select> 
		</td>
	    <td>Nom:
			<br><input name="BPresEmpName" onchange="comaDel(this,25,0,0,0)" size="25" id="bPresEmpName"> 
		</td>
		<td colspan="2">T&#232;l&#232;phone au travail:<br/>(incluez l'indicatif r&#232;gional)<br>
			<input name="BBusinessPhone" onchange="comaDel(this,10,0,0,4); checkPhoneNumberLength(this)" size="12"> 
		</td>
	<!--input name="BIndustrySector" type="hidden"/-->
	<input name="BPresContactName" type="hidden">
	<input name="BPresContactPhone" type="hidden">
	<input name="BPresFaxNumber" type="hidden"></td></tr>
</table>


<!-- Adresse actuelle -->
<!-- LSAM requires Adresse actuelle -->
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
		   <td><br><span class="apply">Adresse actuelle:</span>
			</td>
		</tr>
</table>
<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<tr>
	   <td>Num&#232;ro civique:
		<br>
	<input name="BEmpAddress1" onchange="comaDel(this,5,0,0,3)" size="4"></td>
	   <td>Nom de la rue:
		<br>
	<input name="BEmpAddress2" onchange="comaDel(this,25,0,0,0)" size="18"></td>
		<td>Type de rue:
		<br>
			<select name="BEmpAddress3"> 
			<option selected value=" ">Choisissez
							<option value=" ">Aucun
							<option value="Avenue">Avenue
							<option value="Boulevard">Boulevard
							<option value="Cercle">Cercle
							<option value="Chemin">Chemin
							<option value="Rue">Rue
							</option>
			</select> 
		</td>
		<td>Orientation de la rue:<br>
			<select name="BEmpAddress4" size="1"> 
			<option selected value=" ">Choisissez
			<option value=" ">Aucun
			<option value="E">Est
			<option value="W">Ouest
			<option value="N">Nord
			<option value="S">Sud
			<option value="NE">Nord-Est
			<option value="NW">Nord-Ouest
			<option value="SE">Sud-Est
			<option value="SW">Sud-Ouest
			</option>
			</select>
		</td>
	    <td>Unit&#232;:<br>
	<input name="BEmpUnitNum" onchange="comaDel(this,4,0,0,0)" size="3">
		</td>
	</tr>
</table>

<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<tr vAlign="bottom">
	   <td>Ville:
		<br>
	<input name="BEmpCity" onchange="comaDel(this,15,1,0,0)" size="15"></td>
	    <td>Province:
		<br>
				<select name="BEmpProvince"> 
				<option selected value="">Choisissez
				<option value="AB">Alberta
				<option value="BC">Colombie Britannique
				<option value="PE">Ile-du-Prince-&#232;douard
				<option value="MB">Manitoba
				<option value="NB">Nouveau Brunswick
				<option value="NS">Nouvelle Ecosse
				<option value="NU">Nunavut
				<option value="ON">Ontario
				<option value="QC">Quebec
				<option value="SK">Saskatchewan
				<option value="NF">TerreNeuve
				<option value="NT">Territoires du Nord-Ouest
				<option value="YK">Yukon
				</option>
				</select> 
		</td>
	    <td>Code Postal:<span class="mandatory">&nbsp;</span>
		<br>
	<input name="BEmpCode" onblur="postDel(this,6,0,2,0)" onchange="comaDel(this,6,0,2,0)" size="8"> 
	
		</td>
	</tr>
	</table>
	<table width="640" cellpadding="0" cellspacing="0" border="0">
	<tr vAlign="bottom">
	    <td width="200"><br>Nombre d'ann&#232;es de service:&nbsp;(aamm)
			<br>(ex. 4 ans &amp; 2 mois = 0402)<br>
			<input name="BLengthService" onBlur="comaDel(this,4,0,0,3);chekDat(this,4);" size="4" id="bLengthService">
		</td>
			
	    <!--td width="200">Years in Line of Bus.: (aamm)
			<br><span class="app_smalltxt">(ex. 4 ans &amp; 2 mois = 0402)</span><br>
			<input name="BYrsInLineOfBus" onBlur="comaDel(this,4,0,0,3);chekDat(this,4);" size="4"></td-->
	  <td width="200">Revenu&nbsp;annuel&nbsp;actuel:<br>
			<input name="BAnnualIncome" onchange="comaDel(this,8,0,0,3)" size="8" id="bAnnualIncome">
		</td>
	
	    <td>Type de revenu:<br>
				<select name="BTypeOfIncome" id="bTypeOfIncome"> 
				<option selected value="N/A">Choisissez
				<option value="Salary/Hourly">Salaire/R&#232;mun&#232;ration a l'heure
				<option value="Commission">Commissions
				<option value="Pension">Pension de retraite
				<option value="Alimony">Pensions alimentaires
				<option value="Other">Autre
				</option>
				</select> 
		</td>
		</tr>
		<tr>
		<td><br>Type de revenu:<br>
		<input name="BOtherIncomeSource" onchange="comaDel(this,30,1,0,0)" size="30" maxlength="30">			
		</td>
			
			<td><br>Montant du revenu:<br>
			<input name="BOtherIncome" onchange="comaDel(this,8,0,0,3)" size="8">			
			</td>
	</tr>
</table>


<!--input name="BOtherIncomeSource" type="hidden"/>
<input name="BOtherIncome" type="hidden"/-->

<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<tr><td><hr/></td></tr>
	<tr>
        <td colspan="2"><span class="apply">Employeur pr&#232;c&#232;dent</span>
		</td>
	</tr>
</table>
<table>
  <tr>
  <td>Type d'occupation:<br>
				<select name="BPrevOccupation"> 
				<option selected value="N/A">Choisissez
				<option value="01">Bureau
				<option value="02">Direction
				<option value="05">Professionnel
				<option value="04">Retraite
				<option value="03">Travailleur
				<option value="06">Travailleur autonome
				<option value="99">Autre
				</option>
				</select> 
		</td>
  <td>Nom:
			<br><input name="BPrevEmpName" onchange="comaDel(this,25,0,0,0)" size="25"> 
		</td>
	 </tr>	 
</table>

<table>
<!-- HERE!!!! -->
<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
		<tr>
		   <td><br><span class="apply">Adresse actuelle:</span>
			</td>
		</tr>
</table>
<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<tr>
	   <td>Num&#232;ro civique:
		<br>
	<input name="BPrevEmpAddress1" onchange="comaDel(this,5,0,0,3)" size="4"></td>
	   <td>Nom de la rue:
		<br>
	<input name="BPrevEmpAddress2" onchange="comaDel(this,25,0,0,0)" size="18"></td>
		<td>Type de rue:
		<br>
			<select name="BPrevEmpAddress3"> 
			<option selected value=" ">Choisissez
							<option value=" ">Aucun
							<option value="Avenue">Avenue
							<option value="Boulevard">Boulevard
							<option value="Cercle">Cercle
							<option value="Chemin">Chemin
							<option value="Rue">Rue
							
							</option>
			</select> 
		</td>
		<td>Orientation de la rue:<br>
			<select name="BPrevEmpAddress4" size="1"> 
			<option selected value=" ">Choisissez
			<option value=" ">Aucun
			<option value="E">Est
			<option value="W">Ouest
			<option value="N">Nord
			<option value="S">Sud
			<option value="NE">Nord-Est
			<option value="NW">Nord-Ouest
			<option value="SE">Sud-Est
			<option value="SW">Sud-Ouest
			</option>
			</select>
		</td>
	    <td>Unit&#232;:<br>
	<input name="BPrevEmpUnitNum" onchange="comaDel(this,4,0,0,0)" size="3">
		</td>
	</tr>
</table>

<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<tr vAlign="bottom">
	   <td>Ville:
		<br>
	<input name="BPrevEmpCity" onchange="comaDel(this,15,1,0,0)" size="15"></td>
	    <td>Province:
		<br>
				<select name="BPrevEmpProvince"> 
				<option selected value="">Choisissez
				<option value="AB">Alberta
				<option value="BC">Colombie Britannique
				<option value="PE">Ile-du-Prince-&#232;douard
				<option value="MB">Manitoba
				<option value="NB">Nouveau Brunswick
				<option value="NS">Nouvelle Ecosse
				<option value="NU">Nunavut
				<option value="ON">Ontario
				<option value="QC">Quebec
				<option value="SK">Saskatchewan
				<option value="NF">TerreNeuve
				<option value="NT">Territoires du Nord-Ouest
				<option value="YK">Yukon
				</option>
				</select> 
		</td>
	    <td>Code Postal:<span class="mandatory">&nbsp;</span>
		<br>
	<input name="BPrevEmpCode" onblur="postDel(this,6,0,2,0)" onchange="comaDel(this,6,0,2,0)" size="8"> 
	
		</td>
	</tr>
	</table>
	<table width="640" cellpadding="0" cellspacing="0" border="0">
	<tr vAlign="bottom">
	    <td width="200"><br>Nombre d'ann&#232;es de service:&nbsp;(aamm)
			<br>(ex. 4 ans &amp; 2 mois = 0402)<br>
			<input name="BPrevLengthService" onBlur="comaDel(this,4,0,0,3);chekDat(this,4);" size="4">
		</td>
		<td width="200">Revenu&nbsp;annuel&nbsp;actuel::<br>
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
	    <td> <p class="header">Deuxieme Demandeur - Renseignements personnels</span>
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
				<option selected value="N/A">Choisissez
				<option value="Mr.">Mr.
				<option value="Mrs.">Mrs.
				<option value="Miss.">Miss.
				<option value="Ms.">Ms.
				<option value="Dr">Dr.
				<option value="Rev.">Rev.
				</option>
				</select>
			</td-->
		    
			<td>Pr&#232;nom:
			<br>
			<input name="CFirstName" onchange="comaDel(this,15,1,0,0)" size="15" id="cFirstName">
			</td>
		    
			<td>Nom:
			<br>
			<input name="CLastName" onchange="comaDel(this,20,1,0,0)" size="20" id="cLastName">
			</td>
		    
			<td>Initial:<br><input name="CGivenName" onchange="comaDel(this,1,1,0,0)" size="2"> 
			</td>
			
			<td>Date de naissance:<br>
			<input name="CDOB" onchange="comaDel(this,8,0,0,3);chekDat(this,8);" size="8" id="cDOB">
		  </td>
		</tr>
</table>	
<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<tr vAlign="bottom">
		
		
		<td>NAS#:<br/>
		<input name="CoBorrowerSIN" onchange="getit(this);comaDel(this,9,0,0,4);" size="11">&nbsp;&nbsp;
		</td>
		<td>&#232;tat civil:<br/>
    <select name="CMaritalStatus">
      <option value="">Choisissez
      <option value="S">C&#232;libataire
      <option value="M">Mari&#232;
      <option value="P">S&#232;par&#232;
      <option value="D">Divorc&#232;
      <option value="W">Veuf/Veuve
      <option value="C">Conjoint de fait
    </select>
    </td> 
		<td>Adresse &#232;lectronique:
		<br>
		<input name="CEmailAddr" onblur="emailCheck(this.value,2)" maxlength="50" size="30" id="cEmailAddr">
		</td>
		
		<!--tr>    		
  		<td colspan="2">No de t&#232;l&#232;phone bureau:<br/>(incluez l'indicatif r&#232;gional)
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
		<span class="apply">Adresse actuelle</span>
		<br>
		</td>
	</tr>
	<tr>
		<td colspan="5"><a href="javascript:onClick=copyAddr()"><img alt="DUPLIQUER ADDRESS DU PREMIER DEMANDEUR" border="0" src="images/copyapplicant1_fr.gif" Alt="Address 1 Applicant"></a></td></tr>
	 <tr vAlign="bottom">
	   <td>Num&#232;ro civique:<br>
			<input name="CAddress1" onchange="comaDel(this,5,0,0,3)" size="4" id="cAddress1"></td>
	    <td>Nom de la rue:
		<br>
	<input name="CAddress2" onchange="comaDel(this,25,0,0,0)" size="18" id="cAddress2"></td>
	    <td>Type de rue:<br>
				<select name="CAddress3" id="cAddress3"> 
				
							<option selected value=" ">Choisissez
							<option value=" ">Aucun
							<option value="Avenue">Avenue
							<option value="Boulevard">Boulevard
							<option value="Cercle">Cercle
							<option value="Chemin">Chemin
							<option value="Rue">Rue
							
							
							</option>
				</select>
		</td>
		<td>Orientation de la rue:
		<br>
				<select name="CAddress4" size="1" id="cAddress4"> 
				<option selected value=" ">Choisissez
				<option value=" ">Aucun
				<option value="E">Est
				<option value="W">Ouest
				<option value="N">Nord
				<option value="S">Sud
				<option value="NE">Nord-Est
				<option value="NW">Nord-Ouest
				<option value="SE">Sud-Est
				<option value="SW">Sud-Ouest
				</option>
				</select>
		</td>
		<td>Unit&#232;:<br>
	<input name="CCurrentUnitNum" onchange="comaDel(this,4,0,0,0)" size="3" id="cCurrentUnitNum"></td></tr>
	
</table>
<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">        
	<tr vAlign="bottom">
        <td width="125">Ville:<br/>
		
		<input name="CCurrentCity" onchange="comaDel(this,15,1,0,0)" size="15" id="cCurrentCity"></td>
        <td width="175">Province:
		<br>	
				<select name="CCurrentProvince" id="cCurrentProvince"> 
				<option selected value=" ">Choisissez
				<option value="AB">Alberta
				<option value="BC">Colombie Britannique
				<option value="PE">Ile-du-Prince-&#232;douard
				<option value="MB">Manitoba
				<option value="NB">Nouveau Brunswick
				<option value="NS">Nouvelle Ecosse
				<option value="NU">Nunavut
				<option value="ON">Ontario
				<option value="QC">Quebec
				<option value="SK">Saskatchewan
				<option value="NF">TerreNeuve
				<option value="NT">Territoires du Nord-Ouest
				<option value="YK">Yukon
				</option>
				</select> 
		</td>
		<td align="left" width="100">Code Postal:
		
		<input name="CCurrentCode" onblur="postDel(this,6,0,2,0);" onchange="comaDel(this,6,0,2,0);" size="8" id="cCurrentCode">
		</td>
		</tr>
		<tr vAlign="bottom">
		<td>T&#232;l&#232;phone &#224; domicile: (incluez l'indicatif r&#232;gional)<br>
			<input name="CHomePhone" onchange="comaDel(this,10,0,0,4); checkPhoneNumberLength(this)" size="12" id="cHomePhone"> 
			<input name="CFaxNumber" type="hidden">
		</td>		
		<td align="left" width="200">Temps pass&#232; &#224; cette adresse: (aamm)<br>(ex. 4 ans & 2 mois = 0402)<br/>
		<input name="CCurrentAddrTime" onBlur="comaDel(this,4,0,0,3);chekDat(this,4);" size="4" id="cCurrentAddrTime"></td>
			
			</tr>
			

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
		<td colspan="5"><span class="apply">Adresse pr&#232;c&#232;dente</span></td></tr>
	<tr vAlign="bottom">
		<td>Num&#232;ro civique:<br><input name="CPreviousAddr1" onchange="comaDel(this,5,0,0,3)" size="4"></td>
		<td>Nom de la rue:<br><input name="CPreviousAddr2" onchange="comaDel(this,25,0,0,0)" size="18"></td>
		<td>Type de rue:<br>
					<select name="CPreviousAddress3"> 
							<option selected value=" ">Choisissez
							<option value=" ">Aucun
							<option value="Avenue">Avenue
							<option value="Boulevard">Boulevard
							<option value="Cercle">Cercle
							<option value="Chemin">Chemin
							<option value="Rue">Rue
							</option>
					</select> 
		</td>
		<!--td>Orientation de la rue:<br>
					<select name="CPreviousAddr4" size="1"> 
					<option selected value=" ">Choisissez
					<option value=" ">Aucun
					<option value="E">Est
					<option value="W">Ouest
					<option value="N">Nord
					<option value="S">Sud
					<option value="NE">Nord-Est
					<option value="NW">Nord-Ouest
					<option value="SE">Sud-Est
					<option value="SW">Sud-Ouest
					</option>
					</select>
		</td-->
		<td>Unit&#232;:
		<br>
		<input name="CPreviousUnitNum" onchange="comaDel(this,4,0,0,0)" size="3"></td>
	</tr>
</table>
<!--<center>-->
<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">        
	<tr vAlign="bottom">
        <td width="80">Ville:<br/>		
		<input name="CPreviousCity" onchange="comaDel(this,15,1,0,0)" size="15"></td>
        <td width="175">Province:<br>	
				<select name="CPreviousProvince"> 
				<option selected value=" ">Choisissez
				<option value="AB">Alberta
				<option value="BC">Colombie Britannique
				<option value="PE">Ile-du-Prince-&#232;douard
				<option value="MB">Manitoba
				<option value="NB">Nouveau Brunswick
				<option value="NS">Nouvelle Ecosse
				<option value="NU">Nunavut
				<option value="ON">Ontario
				<option value="QC">Quebec
				<option value="SK">Saskatchewan
				<option value="NF">TerreNeuve
				<option value="NT">Territoires du Nord-Ouest
				<option value="YK">Yukon
				</option>
				</select> 
		</td>
		<td align="left" width="100">Code Postal:<br/>
		
		<input name="CPreviousCode" onblur="postDel(this,6,0,2,0);" onchange="/*comaDel(this,6,0,2,0);*/" size="8"></td>
		</tr>
</table>


<table width="640" cellspacing="0" cellpadding="0" border="0">
<tr><td><hr/></td></tr>
</table>

<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
		  
	 <tr>
		    <td colspan="2"><span class="apply">Employeur actuel (Deuxieme demandeur)</span></td></tr>
		<input name="CCurrentEmployStatus" type="hidden"> 
		 <tr vAlign="bottom">
		    <td>Type d'occupation:
			<br>
				<select name="Coccupation" id="cOccupation"> 
				<option selected value="N/A">Choisissez
				<option value="01">Bureau
				<option value="02">Direction
				<option value="05">Professionnel
				<option value="04">Retraite
				<option value="03">Travailleur
				<option value="06">Travailleur autonome
				<option value="99">Autre
				</option>
				</select> 
			
			</td>
		    
		    <td colspan="1">Nom:
				<br><input name="CPresEmpName" onchange="comaDel(this,25,0,0,0)" size="25" id="cPresEmpName"> 				
			</td>
			<td colspan="2">No de t&#232;l&#232;phone bureau:<br/>(incluez l'indicatif r&#232;gional)<br>
				<input name="CBusinessPhone" onchange="comaDel(this,10,0,0,4); checkPhoneNumberLength(this)" size="12"> 
			</td>
		
		</tr>
</table>


<!-- Co-borrower Adresse actuelle -->
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
		   <td><br><span class="apply">Adresse actuelle:</span>
			</td>
		</tr>
</table>


<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  
  <tr>
		<td>Num&#232;ro civique:
		<br><input name="CEmpAddress1" onchange="comaDel(this,5,0,0,3)" size="4"></td>
		    <td>Nom de la rue:
		<br><input name="CEmpAddress2" onchange="comaDel(this,25,0,0,0)" size="18"></td>
	    <td>Type de rue:<br>
				<select name="CEmpAddress3"> 
							<option selected value=" ">Choisissez
							<option value=" ">Aucun
							<option value="Avenue">Avenue
							<option value="Boulevard">Boulevard
							<option value="Cercle">Cercle
							<option value="Chemin">Chemin
							<option value="Rue">Rue
							</option>
				</select>
		</td>
	    <td>Orientation de la rue:<br>
				<select name="CEmpAddress4" size="1"> 
				<option selected value=" ">Choisissez
				<option value=" ">Aucun
				<option value="E">Est
				<option value="W">Ouest
				<option value="N">Nord
				<option value="S">Sud
				<option value="NE">Nord-Est
				<option value="NW">Nord-Ouest
				<option value="SE">Sud-Est
				<option value="SW">Sud-Ouest
				</option>
				</select>
		</td>
	    <td>Unit&#232;:
		<br>
	<input name="CEmpUnitNum" onchange="comaDel(this,4,0,0,0)" size="3"></span>
		</td>
	</tr>
</table>
<table border="0" width="640" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF">
	<tr vAlign="bottom">
		<td>Ville:
		<br>
	<input name="CEmpCity" onchange="comaDel(this,15,1,0,0)" size="15"></td>
	    <td>Province:
		<br>
				<select name="CEmpProvince"> 
				<option selected value=" ">Choisissez
				<option value="AB">Alberta
				<option value="BC">Colombie Britannique
				<option value="PE">Ile-du-Prince-&#232;douard
				<option value="MB">Manitoba
				<option value="NB">Nouveau Brunswick
				<option value="NS">Nouvelle Ecosse
				<option value="NU">Nunavut
				<option value="ON">Ontario
				<option value="QC">Quebec
				<option value="SK">Saskatchewan
				<option value="NF">TerreNeuve
				<option value="NT">Territoires du Nord-Ouest
				<option value="YK">Yukon
				</option>
				</select>
		</td>
		<td>Code Postal:
		<br>
		<input name="CEmpCode" onchange="comaDel(this,6,0,2,0); postDel(this,6,0,2,0);" size="8"> 
		</td></tr>
	 <tr vAlign="bottom">
	    <td><br>Nombre d'ann&#232;es de service:&nbsp;(aamm)
		<br>(ex. 4 ans & 2 mois = 0402)<br>
		<input name="CLengthService" onBlur="comaDel(this,4,0,0,3);chekDat(this,4);" size="4" id="cLengthService"></td>
	    
	    <td valign="bottom">Revenu&nbsp;annuel&nbsp;actuel::
		<br>
		<input name="CAnnualIncome" onchange="comaDel(this,7,0,0,3)" size="7" id="cAnnualIncome"></td>
	    <td>Type de revenu:<br>
				<select name="CTypeOfIncome" id="cTypeOfIncome">
				<option selected value="N/A">Choisissez
				<option value="Salary/Hourly">Salaire/R&#232;mun&#232;ration a l'heure
				<option value="Commission">Commissions
				<option value="Pension">Pension de retraite
				<option value="Alimony">Pensions alimentaires
				<option value="Other">Autre
				</option>
				</select>
		</td>
		</tr>
		<tr>
		<td><br>Type de revenu:<br>
			<input name="COtherIncomeSource" onchange="comaDel(this,30,1,0,0)" size="30" maxlength="30">			
			</td>
			
			<td><br>Montant du revenu:<br>
			<input name="COtherIncome" onchange="comaDel(this,8,0,0,3)" size="8">			
			</td>
		</tr>
	<tr><td colspan="3"><br></td></tr>
</table>


<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<tr><td><hr/></td></tr>
	<tr>
        <td colspan="2"><span class="apply">Employeur pr&#232;c&#232;dent</span>
		</td>
	</tr>
</table>
<table>
  <tr>
  <td>Type d'occupation:<br>
				<select name="CPrevOccupation"> 
				<option selected value="N/A">Choisissez
				<option value="01">Bureau
				<option value="02">Direction
				<option value="05">Professionnel
				<option value="04">Retraite
				<option value="03">Travailleur
				<option value="06">Travailleur autonome
				<option value="99">Autre
				</option>
				</select> 
		</td>
  <td>Nom:
			<br><input name="CPrevEmpName" onchange="comaDel(this,25,0,0,0)" size="25" id="bPresEmpName"> 
		</td>
	 </tr>	 
</table>
<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
		<tr>
		   <td><br><span class="apply">Adresse actuelle:</span>
			</td>
		</tr>
</table>
<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<tr>
	   <td>Num&#232;ro civique:
		<br>
	<input name="CPrevEmpAddress1" onchange="comaDel(this,5,0,0,3)" size="4"></td>
	   <td>Nom de la rue:
		<br>
	<input name="CPrevEmpAddress2" onchange="comaDel(this,25,0,0,0)" size="18"></td>
		<td>Type de rue:
		<br>
			<select name="CPrevEmpAddress3"> 
			<option selected value=" ">Choisissez
							<option value=" ">Aucun
							<option value="Avenue">Avenue
							<option value="Boulevard">Boulevard
							<option value="Cercle">Cercle
							<option value="Chemin">Chemin
							<option value="Rue">Rue
							
							</option>
			</select> 
		</td>
		<td>Orientation de la rue:<br>
			<select name="CPrevEmpAddress4" size="1"> 
			<option selected value=" ">Choisissez
			<option value=" ">Aucun
			<option value="E">Est
			<option value="W">Ouest
			<option value="N">Nord
			<option value="S">Sud
			<option value="NE">Nord-Est
			<option value="NW">Nord-Ouest
			<option value="SE">Sud-Est
			<option value="SW">Sud-Ouest
			</option>
			</select>
		</td>
	    <td>Unit&#232;:<br>
	<input name="CPrevEmpUnitNum" onchange="comaDel(this,4,0,0,0)" size="3">
		</td>
	</tr>
</table>

<table border="0" width="640" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<tr vAlign="bottom">
	   <td>Ville:
		<br>
	<input name="CPrevEmpCity" onchange="comaDel(this,15,1,0,0)" size="15"></td>
	    <td>Province:
		<br>
				<select name="CPrevEmpProvince"> 
				<option selected value="">Choisissez
				<option value="AB">Alberta
				<option value="BC">Colombie Britannique
				<option value="PE">Ile-du-Prince-&#232;douard
				<option value="MB">Manitoba
				<option value="NB">Nouveau Brunswick
				<option value="NS">Nouvelle Ecosse
				<option value="NU">Nunavut
				<option value="ON">Ontario
				<option value="QC">Quebec
				<option value="SK">Saskatchewan
				<option value="NF">TerreNeuve
				<option value="NT">Territoires du Nord-Ouest
				<option value="YK">Yukon
				</option>
				</select> 
		</td>
	    <td>Code Postal:<span class="mandatory">&nbsp;</span>
		<br>
	<input name="CPrevEmpCode" onblur="postDel(this,6,0,2,0)" onchange="comaDel(this,6,0,2,0)" size="8"> 
	
		</td>
	</tr>
	</table>
	<table width="640" cellpadding="0" cellspacing="0" border="0">
	<tr vAlign="bottom">
	    <td width="200"><br>Nombre d'ann&#232;es de service:&nbsp;(aamm)
			<br>(ex. 4 ans & 2 mois = 0402)<br>
			<input name="CPrevLengthService" onBlur="comaDel(this,4,0,0,3);chekDat(this,4);" size="4" id="bLengthService">
		</td>
		<td width="200">Revenu&nbsp;annuel&nbsp;actuel::<br>
			<input name="CPrevAnnualIncome" onchange="comaDel(this,8,0,0,3)" size="8">
			</td>
	</tr>




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
<input name="LotUnit" type="hidden" value="1"/>
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
		<td><p class="header">Information sur la propri&#232;t&#232;</span>
	<br>
	</td>
	</tr>
</table>

<table border="0" width="640" cellpadding="0" cellspacing="0">
<tr>
<td width="150"><br><span class="apply">Adresse de la propri&#232;t&#232;:</span></td>
</tr>
<tr></tr></table>
<table border="0" width="640">
<tr vAlign="bottom">
<td>Num&#232;ro civique:
</font><br><input name="PAddress1" onchange="comaDel(this,5,0,0,3)" size="4"></td>
<td>Nom de la rue:<br>
<input name="PAddress2" onchange="comaDel(this,25,0,0,0)" size="18"></td>
<td>Type de rue:
<br><select name="PAddress3">
<option selected value=" ">Choisissez
							<option value=" ">Aucun
							<option value="Avenue">Avenue
							<option value="Boulevard">Boulevard
							<option value="Cercle">Cercle
							<option value="Chemin">Chemin
							<option value="Rue">Rue
</select>

</td>
<td>Orientation de la rue:<br>
<select name="PAddress4">
<option selected value=" ">Choisissez
<option value=" ">Aucun
<option value="E">Est
<option value="W">Ouest
<option value="N">Nord
<option value="S">Sud
<option value="NE">Nord-Est
<option value="NW">Nord-Ouest
<option value="SE">Sud-Est
<option value="SW">Sud-Ouest</option>
</select>

</td>
    <td>Unit&#232;:
<br><input name="PUnitNum" onchange="comaDel(this,4,0,0,0)" size="3">
</td>
</tr>
</table>
<table width="640" border="0">
<tr vAlign="bottom">
<td>Ville:

<br>
<input name="PCity" onchange="comaDel(this,15,1,0,0)" size="15"></td>
<td>Province:

<br><select name="PProvince">
<option selected value="">Choisissez
				<option value="AB">Alberta
				<option value="BC">Colombie Britannique
				<option value="PE">Ile-du-Prince-&#232;douard
				<option value="MB">Manitoba
				<option value="NB">Nouveau Brunswick
				<option value="NS">Nouvelle Ecosse
				<option value="NU">Nunavut
				<option value="ON">Ontario
				<option value="QC">Quebec
				<option value="SK">Saskatchewan
				<option value="NF">TerreNeuve
				<option value="NT">Territoires du Nord-Ouest
				<option value="YK">Yukon
</option>
</select>
</td>
<td>Code Postal:
<br>
<span class="newtext">
<input name="PPostalCode" onblur="postDel(this,6,0,2,0)" onBlur="comaDel(this,6,0,2,0)" size="8"></td></tr></table>


<table width="640" cellpadding="0" cellspacing="0" border="0">
<tr><td><hr/></td></tr>
</table>	

<table border="0" width="640" cellpadding="0" cellspacing="0">
<tr><td colSpan="2"><span class="apply">Description de la propri&#232;t&#232;:</td>
</tr>
</table>
<table width="640" cellpadding="0" cellspacing="0" border="0">
<tr>

<td>Âge de la structure: (Ans)<br/>
<input name="AgeBuilding" onchange="comaDel(this,3,0,0,3)" size="3"></td>
<!--td>Property Type:
<br><select name="FPROPTYPE">
<option selected value=" ">Choisissez
<option value="1">D&#232;tach&#232;
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

<td width="80" align="center">Espace habitable 
		<br>
		<input name="FLIVABLEAREA" onchange="comaDel(this,6,0,0,3)" size="6">
	</td>
<td width="120" align="center">Unites d'Espace habitable:
		<br>
		<select name="FLIVABLEAREAUNIT">
		<option selected value="1">Pieds
		<option value="0">M&#232;tres
		</option>
		</select>
	</td>	

<td width="20"></td>
<!--td align="left">Dwelling Style:<br>
<select name="PDwellStyle">
<option selected value="">Choisissez
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

	<td width="80" align="center">Taille du terrain (largeur): 
		<br>
		<input name="LotWidth" onchange="comaDel(this,3,0,0,3)" size="3">
	</td>
	<td width="10" align="center">
		<strong><font face="Arial">X</font></strong>
	</td>

	<td width="80" align="center">Taille du terrain (profondeur):<br>
		<input name="LotDepth" onchange="comaDel(this,3,0,0,3)" size="3">
	</td>
	<td width="80" align="center">Unites:
		<br>
		<select name="LotUnit">
		<option selected value="1">Pieds
		<option value="0">M&#232;tres
		</option>
		</select>
	</td>
<td width="100"></td>

	<td width="125" align="center">Type de garage:
<br>
		<select name="GarageType">
		<option selected value="N/A">Choisissez
		<option value="01">Attach&#232;
		<option value="02">D&#232;tach&#232;
		<option value="03">Aucun
		</option>
		</select>
	</td>	
	<td align="center" width="100">Taille du garage
		<br><select name="GarageSize">
		<option selected value="N/A">Choisissez
		<option value="01">Unique
		<option value="02">Double
		<option value="03">Triple
		<option value="04">Aucun
		</option></select>
	</td>
	<td align="center" width="100">Type de chauffage
    <br/><select name="GarageHeat">
          <option selected value="">Choisissez
          <option value="01">Plinthe chauf. &#232;lect.
          <option value="02">Air Puls&#232;/Huile/Elect.
          <option value="03">Chauffage eau chaude
          <option value="-1">Autre</OPTION></SELECT>
   </td> 
</tr>
</table>
<table>
			<td width="120">Taxes<br/>municipales:
			<input name="sAnnuTax" onchange="comaDel(this,8,0,0,3)" size="8">			
			</td>
			<td width="120">Frais de<br/>chauffage:
			<input name="EstMonthHeating" onchange="comaDel(this,8,0,0,3)" size="8">			
			</td>

			<td width="120">Frais de<br/>condo:<br>
			<input name="MonthlyFee" onchange="comaDel(this,8,0,0,3)" size="8">			
			</td>						


<td width="20"></td>
<td><br>Occupation:<br>
				<select name="sOccby"> 
				<option selected value=" ">Choisissez
				<option value="A">Demandeur
				<option value="T">Locataire
				<option value="B">Demandeur et Locataire
				</option>
			</select>
</td>			
</tr>
</table>
<table width="640" border="0">
<tr><td>Note: Veuillez fournir le type de propri&#232;t&#232; et le type de logement dans la section de notes</td></tr>
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
        <td> <p class="header">Renseignements financiers</span></td>
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
             <span class="apply">Actif</span></td></tr>
            
            <tr>
              <td><span class="apply">Type</td>
              <td align="center"><span class="apply">O&#249;/Institution(s) financi&#232;re(s)</td>
              <td align="center"><span class="apply">Montant/Valeur</td>
              <td>&nbsp;</th>
            <tr>
              <td bgcolor="#EEEEEE">Avoirs en banque</span></td>
              <td bgcolor="#EEEEEE" align="middle"><input name="ACIB" onchange="comaDel(this,15,0,0,0)"></td>
              <td bgcolor="#EEEEEE" align="middle"><input name="ACIBValue" onblur="comaDel(this,8,0,0,3);networths(this);" size="8" id="acibValue">$</td>
              <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on Cash In Bank'; return true"><img alt="Help" border="0" src="images/b2b_help_fr.gif"></a></td>
            <tr>
              <td>Acompte sur la propri&#232;t&#232; &#224; acheter
                <br>(le cas &#232;ch&#232;ant)</span></td>
              <td align="middle">&nbsp;</td>
              <td align="middle"><input name="ADeposit" onblur="comaDel(this,8,0,0,3);networths(this);" size="8" id="depositValue">$</td>
              <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on Deposit On Property Being Purchased'; return true"><img alt="Help" border="0" src="images/b2b_help_fr.gif"></a></td>
            </tr>
            <tr>
              <td bgcolor="#EEEEEE">R&#232;ER</span></td>
              <td bgcolor="#EEEEEE" align="middle"><input name="ARRSP" onchange="comaDel(this,25,1,0,0)"></td>
              <td bgcolor="#EEEEEE" align="middle"><input name="ARRSPValue" onblur="comaDel(this,8,0,0,3);networths(this);" size="8" id="rrspValue">$</td>
              <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on RRSPs'; return true"><img alt="Help" border="0" src="images/b2b_help_fr.gif"></a></td>
            </tr>
			       <tr>
              <td>Automobile: valeur actuelle</span></td>
              <td align="middle"><input name="AAutomobile" onchange="comaDel(this,25,0,0,0)"></td>
              <td align="middle"><input name="AAutoValue" onblur="comaDel(this,8,0,0,3);networths(this);" size="8" id="autoValue">$</td>
              <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on Automobile Value'; return true"><img alt="Help" border="0" src="images/b2b_help_fr.gif"></a></td>
            </tr>
			       <tr>
              <td  bgcolor="#EEEEEE">Valeur de la maison actuelle<br>(si vous en poss&#232;dez une)</span></td>
              <td  bgcolor="#EEEEEE" align="middle">&nbsp;</td>
              <td  bgcolor="#EEEEEE" align="middle"><input name="AHomeValue" onblur="comaDel(this,8,0,0,3);networths(this);" size="8" id="homeValue">$</td>
              <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on Value Of Present Home'; return true"><img alt="Help" border="0" src="images/b2b_help_fr.gif"></a></td>
            </tr>
            <tr>                     
      				<td>Autres &#232;l&#232;ments d'actif</td>
      				<td align="middle"><input name="AOther" onchange="comaDel(this,25,1,0,0)"></td>
      				<td align="middle"><input name="AOtherValue" onblur="comaDel(this,8,0,0,3);networths(this);" size="8" id="otherValue">$</td>
      				<td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on Other Actif'; return true"><img alt="Help" border="0" src="images/b2b_help_fr.gif"></a></td>
            <tr>
			     <!-- tr>
              <td bgcolor="#EEEEEE">Investment/vacation properties</span></td>
              <td bgcolor="#EEEEEE" align="middle"><input name="AProperties" onchange="comaDel(this,25,1,0,0)"></td>
              <td bgcolor="#EEEEEE" align="middle">$<input name="APropertiesValue" onblur="comaDel(this,8,0,0,3);networths(this);" size="8" id="propertiesValue"></td>
              <td align="middle"><a href="javascript:winopen1('help-vacation.asp')" onmouseover="self.status='Help on Investment/Vacation Properties'; return true"><img alt="Help" border="0" src="images/b2b_help_fr.gif"></a></td>
            </tr-->
			<!--tr>
              <td>Stocks, bonds, Mutual funds etc.</span></td>
              <td align="middle"><input name="AInvestments" onchange="comaDel(this,25,1,0,0)"></td>
              <td align="middle"><input name="AInvestmentsValue" onblur="comaDel(this,8,0,0,3);networths(this);" size="8">$</td>            
			  <td align="middle"><a href="javascript:winopen1('help-stocks.asp')" onmouseover="self.status='Help on Stocks, Bonds, Mutual Funds etc.'; return true"><img alt="Help" border="0" src="images/b2b_help_fr.gif"></a></td>
			</tr-->
          <tr>  
              <td bgcolor="#EEEEEE" align="left"><b>Total</b></td>
              <td bgcolor="#EEEEEE" align="middle"><br></td>
              <td bgcolor="#EEEEEE" align="middle"><input name="ATotalValue" onchange="comaDel(this,10,0,0,3);networthx();" size="8" id="aTotalValue">$</td>
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
                <span class="apply">Passif</span></td></tr>
            <tr>
              <td width="150"><span class="apply">Type</td>
              <td width="150" align="center"><span class="apply">O&#249;/Institution(s) financi&#232;re(s)</td>
              <td width="125" align="center"><span class="apply">Solde d&#251;</td>
              <td width="129" align="center"><span class="apply">Versement mensuel</td>
              <td>&nbsp;</td>
			</tr>
            <tr>
              <td bgcolor="#EEEEEE" width="100">Pr&#234;ts bancaires</span></td>
              <td bgcolor="#EEEEEE" align="middle"><input name="LBankLoans" onchange="comaDel(this,15,1,0,0)" size="15"></td>
              <td bgcolor="#EEEEEE" align="middle"><input name="LLoanBalance" onblur="comaDel(this,8,0,0,3);networths(this)" size="8" id="loanBalance">$</td>
              <td bgcolor="#EEEEEE" align="middle"><input name="LLoanPayment" onblur="comaDel(this,8,0,0,3);networths(this)" size="8" id="loanPayment">$</td>
              <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on Bank Loans'; return true"><img alt="Help" border="0" src="images/b2b_help_fr.gif"></a></td>
            </tr>
            <tr>
              <td>Cartes de cr&#232;dit</span></td>
              <td align="middle"><input name="LCreditCards" onchange="comaDel(this,15,1,0,0);" size="15"></td>
              <td align="middle"><input name="LCardBalance" onblur="comaDel(this,8,0,0,3);networths(this)" size="8" id="cardBalance">$</td>
              <td align="middle"><input name="LCardPayment" onblur="comaDel(this,8,0,0,3);networths(this)" size="8" id="cardPayment">$</td>
              <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on Credit Cards'; return true"><img alt="Help" border="0" src="images/b2b_help_fr.gif"></a></td>
            </tr>
            <tr>
              <td bgcolor="#EEEEEE">Encours du pr&#234;t-auto</span><br></td>
              <td bgcolor="#EEEEEE" align="middle"><input name="LAutoLoan" onchange="comaDel(this,25,1,0,0)" size="15"></td>
              <td bgcolor="#EEEEEE" align="middle"><input name="LAutoBalance" onblur="comaDel(this,8,0,0,3);networths(this)" size="8" id="autoBalance">$</td>
              <td bgcolor="#EEEEEE" align="middle"><input name="LAutoPayment" onblur="comaDel(this,8,0,0,3);networths(this)" size="8" id="autoPayment">$</td>
              <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on Owing On Automobile'; return true"><img alt="Help" border="0" src="images/b2b_help_fr.gif"></a></td>
            </tr>
            <tr>
              <td>Encours de la ou des hypoth&#232;ques actuelles - 1</span></td>
              <td align="middle"><input name="LMortgage" onchange="comaDel(this,30,1,0,0)"></td>
              <td align="middle"><input name="LMortgageBalance" onblur="comaDel(this,8,0,0,3);networths(this)" size="8" id="mortgageBalance">$</td>
              <td align="middle"><input name="LMortgagePayment" onblur="comaDel(this,8,0,0,3);networths(this)" size="8" id="mortgagePayment">$</td>
              <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on Amount Owing On Current Mortgage(s) - 1'; return true"><img alt="Help" border="0" src="images/b2b_help_fr.gif"></a></td>
            </tr>
            <tr>
              <td bgcolor="#EEEEEE">Encours de la ou des hypoth&#232;ques actuelles - 2</span></td>
              <td bgcolor="#EEEEEE" align="middle"><input name="LMortgage2" onchange="comaDel(this,30,1,0,0)"></td>
              <td bgcolor="#EEEEEE" align="middle"><input name="LMortgageBalance2" onblur="comaDel(this,8,0,0,3);networths(this)" size="8" id="mortgage2Balance">$</td>
              <td bgcolor="#EEEEEE" align="middle"><input name="LMortgagePayment2" onblur="comaDel(this,8,0,0,3);networths(this)" size="8" id="mortgage2Payment">$</td>
              <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on Amount Owing On Current Mortgage(s) - 2'; return true"><img alt="Help" border="0" src="images/b2b_help_fr.gif"></a></td>
            </tr>
            <!--tr>
              <td>Mortgage Number(s) of Current Mortgage(s)</span></td>
              <td align="middle"><input name="LMortgageNum" onchange="comaDel(this,12,0,0,0)" size="15"></td>
              <td>&nbsp;<br></td>
              <td>&nbsp;<br></td>
              <td align="middle"><a href="javascript:winopen1('help-mtgnum.asp')" onmouseover="self.status='Help on Mortgage Numbers Of Current Mortgages'; return true"><img alt="Help" border="0" src="images/b2b_help_fr.gif"></a></td>
            </tr-->
            <tr>
              <td>Pr&#234;ts de soci&#232;t&#232;s de financement et autres dettes</span> <br></td>
              <td align="middle"><input name="LFinanceCompany" onchange="comaDel(this,25,1,0,0)"></td>
              <td align="middle"><input name="LFinanceBalance" onblur="comaDel(this,8,0,0,3);networths(this)" size="8" id="financeBalance">$</td>
              <td align="middle"><input name="LFinancePayment" onblur="comaDel(this,8,0,0,3);networths(this)" size="8" id="financePayment">$</td>
              <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on Finance Company Loans And Other Debts'; return true"><img alt="Help" border="0" src="images/b2b_help_fr.gif"></a></td>
            </tr>
            <tr>
              <td bgcolor="#EEEEEE">Pension alimentaire/Soutien d'enfant</span></td>
              <td bgcolor="#EEEEEE" align="middle"><br></td>
              <td bgcolor="#EEEEEE" align="middle"><br></td>
              <td bgcolor="#EEEEEE" align="middle"><input name="LChildSupport" onblur="comaDel(this,8,0,0,3);networths(this);" size="8" id="alimonyPayment">$</td>
              <td align="middle"><a href="javascript:winopen1('')" onmouseover="self.status='Help on Alimony &amp; Child Support'; return true"><img alt="Help" border="0" src="images/b2b_help_fr.gif"></a></td>
            </tr>
            <tr>
              <td align="left" class="app_tablemainhdr">Total</th>
              <td align="middle" class="app_tablemainhdr"><br></td>
              <td align="middle"><input name="LTotal" onchange="comaDel(this,10,0,0,3);networthx()" size="8" id="lTotal">$</td>
              <td align="middle"><input name="LTotalPayment" onchange="comaDel(this,10,0,0,3);networthx();" size="8" id="lTotalPayment">$</td>
              <td>&nbsp;</td></tr></table></td>
			</tr>
		</table><br>
			 
    <table border="0" align="center" cellPadding="0" cellSpacing="0" width="640">
      
      <tr>
        <td align="left" class="app_tablemainhdr">Valeur nette (Total de l'actif - Total du passif) = <input name="LNetWorth" onchange="comaDel(this,10,0,0,3);networthx();" size="10" id="lNetWorth">$</td> 
      <tr></tr></table>
      
      
    <p>
    <table border="0" width="640">
    <tr><td><hr/></td></tr>
    <tr>
      <td><span class="apply">Information Suppl&#232;mentaire</span><td></tr>  
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
        <td colSpan="3">Note compl&#232;mentaire de renseignements financiers: (500 caract&#232;res, max.)<br></td>
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
<span class="apply">Termes et Conditions</span>
<br/><br/>
<textarea readonly cols="90" rows="6">RENSEIGNEMENTS PERSONNELS
Je reconnais &#271;une part que la Banque peut, au besoin, recueillir des renseignements personnels relatifs &#224; mon dossier de cr&#232;dit, &#224; ma situation &#271;emploi et &#224; &#271;autres aspects financiers me concernant (« renseignements personnels ») aupr&#232;s de ses clients, du garant (caution) ou &#271;autres entit&#232;s d&#232;crites aux pr&#232;sentes, et que la Banque peut &#271;autre part faire usage de ces renseignements personnels dans le cadre de ses activit&#232;s courantes, notamment, mais sans limiter la port&#232;e de ce qui pr&#232;c&#232;de, pour v&#232;rifier l’identit&#232; de ses clients, ouvrir un compte ou un compte de pr&#234;t, se renseigner sur la situation financi&#232;re globale de ses clients et offrir les produits et services qui conviennent &#224; sa client&#232;le. 

&#224; cette fin;
a) j’autorise la Banque, les entit&#232;s qui lui sont affili&#232;es et ses fournisseurs de services agissant en son nom &#224; : 
i) obtenir les renseignements concernant ma solvabilit&#232; ou ma situation financi&#232;re pouvant &#234;tre n&#232;cessaires de temps &#224; autre aux fins d&#232;crites aux pr&#232;sentes, y compris mon identification et ce jusqu’au paiement complet de tout montant d&#251; &#224; la Banque, aupr&#232;s de personnes l&#232;galement autoris&#232;es ainsi qu’aupr&#232;s, &#271;un agent de renseignements personnels, de toute personne mentionn&#232;e dans les rapports de solvabilit&#232; obtenus, de toute institution financi&#232;re, de tout assureur &#271;hypoth&#232;ques ou de toute personne qui fournit des r&#232;f&#232;rences, de mon employeur actuel ou pr&#232;c&#232;dent mentionn&#232; dans la demande, et j’autorise de telles personnes &#224; divulguer les renseignements demand&#232;s; 
ii) divulguer les renseignements qu’elle d&#232;tient &#224; mon sujet &#224; toute personne autoris&#232;e par la loi, &#224; tout agent de renseignements personnels, &#224; toute institution financi&#232;re, &#224; tout assureur &#271;hypoth&#232;ques ou &#224; toute entreprise d&#251;ment d&#232;sign&#232;e par la Banque en conformit&#232; avec le paragraphe c) ci-dessous ou, avec mon consentement, &#224; toute personne qui en fait la demande; 
iii) utiliser mon num&#232;ro &#271;assurance sociale aux fins de d&#232;claration de l’impôt sur le revenu, &#271;identification et de regroupement de donn&#232;es concernant les services propos&#232;s par la Banque; 
iv) rendre mes renseignements personnels disponibles &#224; ses employ&#232;s, aux entit&#232;s qui lui sont affili&#232;es et &#224; ses fournisseurs de services qui sont tenus &#271;en prot&#232;ger la confidentialit&#232;. 
Par les pr&#232;sentes, j’autorise B2B Banque &#224; demander mon rapport de solvabilit&#232; aupr&#232;s des agences &#271;&#232;valuation du cr&#232;dit et &#271;y avoir acc&#232;s. 
b) Vous pouvez &#224; tout moment, sans m’en informer, c&#232;der mon compte &#224; toute personne. Le cessionnaire sera tenu de conserver mes renseignements personnels pour une certaine p&#232;riode de temps, conform&#232;ment aux lois applicables.
c) Dans le but de b&#232;n&#232;ficier &#271;un service de qualit&#232; et &#271;obtenir toute information disponible concernant les produits financiers offerts par la Banque et les entit&#232;s qui lui sont affili&#232;es ou par toute autre entreprise d&#251;ment d&#232;sign&#232;e par la Banque, j’autorise la Banque, les entit&#232;s qui lui sont affili&#232;es et toute autre entreprise d&#251;ment d&#232;sign&#232;e par la Banque &#224; utiliser les renseignements d&#232;tenus sur moi pour me faire parvenir toute documentation, publicit&#232; ou information. Je comprends que les employ&#232;s et les mandataires autoris&#232;s de la Banque et des entit&#232;s qui lui sont affili&#232;es pourront utiliser mes renseignements personnels conditionnellement &#224; ce que ces renseignements soient n&#232;cessaires ou utiles &#224; l’exercice de leurs fonctions. J’ai le droit de demander &#224; tout moment que la Banque s’abstienne &#271;utiliser les renseignements aux fins &#232;nonc&#232;es dans le pr&#232;sent paragraphe en faisant parvenir un avis &#232;crit &#224; celui-ci. La Banque ne me refusera pas les services d&#232;crits aux pr&#232;sentes auxquels j’ai droit, m&#234;me si j’ai r&#232;voqu&#232; mon autorisation &#224; l’utilisation de ces renseignements personnels.
d) Dans le cas de services rendus par la Banque &#224; partir &#271;un pays &#232;tranger, je comprends que la Banque peut &#234;tre tenue de divulguer mes renseignements personnels aux organismes de r&#232;glementation du territoire &#232;tranger, en conformit&#232; avec les lois applicables;
e) J’autorise la Banque &#224; divulguer et &#224; partager des renseignements avec les autorit&#232;s comp&#232;tentes dans des cas de fraude, &#271;enqu&#234;te ou de violation &#271;un accord de financement. 
f) J’autorise la Banque &#224; divulguer et &#224; partager des renseignements avec &#271;autres institutions financi&#232;res lorsqu’une communication interbancaire est requise pour &#232;viter ou contrôler la fraude, pendant des enqu&#234;tes relatives &#224; une violation &#271;un accord de financement ou dans le cas de toute infraction &#224; une loi.
g) Tout dossier me concernant sera conserv&#232; dans le service appropri&#232; de la Banque. Lors de la r&#232;ception &#271;une demande &#232;crite, la Banque me permettra de consulter les renseignements auxquels je peux l&#232;galement avoir acc&#232;s et je peux obtenir une copie desdits renseignements en payant les montants factur&#232;s par la Banque.
</textarea>
<br><br>
<hr/>
<span class="apply">Demande en ligne</span>
<br><br>
Veuillez lire le paragraphe ci-dessus avant d'envoyer l'application r&#232;alis&#232;e. 
							
					</td>
				</tr>
			<tr><td><br><br></td></tr>
</table>

<table>
  <tr>
    <td>
      <input type="checkbox" name="ack" id="ack">J’ai (nous avons) lu et compris les dispositions ci-dessus et j’accepte (nous acceptons) de m’y (de nous y) conformer. En soumettant la pr&#232;sente demande en ligne, j’accepte/nous acceptons les dispositions.
    </td>
  </tr>
</table>
</form>
<table cellPadding="2" cellSpacing="2" width="640" border="0" align="center">
  
  <tr>
    <td width="200" align="center"><a href="javascript:saveCooks()" onmouseover="self.status='Save Your Data';return true;"><img alt="Save Your Data" border="0" src="images/LSM_buttonstore_fr.gif"></a>&nbsp;</td><td width="200"><a href="javascript:ControlSub();" onmouseover="parent.status='Send Application';return true;"><img alt="Send Application" border="0" src="images/send_application_fr.gif"></a>&nbsp;</td><td width="200"><a href="javascript:reloadCooks()" onmouseover="self.status='Reload Data';return true;"><img alt="Reload Data" border="0" src="images/reload_data_fr.gif"></a></td>
  </tr>
  <tr>
    <td>
      <span class="mandatory">*</span>  Champ obligatoire
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
