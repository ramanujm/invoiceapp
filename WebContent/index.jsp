<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
           
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Origination</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script language="javascript">
function go_french() {
  location.href = 'applyMortgageFR.action';
}

function go_english() {
  location.href = "applyMortgageEN.action";
}
</script>

</head>
<body>
	<Center>
		<table width="30%" height="50%">
			<tr height="10%">
				<td colspan="3" align="center"><img	src="images/logo.gif" /></td>
			</tr>
			<tr style="line-height: 19em">
				<td colspan="3" align="center" class="mainHeader">Welcome</td>
			</tr>
			<tr height="30%">
				<td width="20%" align="center"><div class="mainButtonHeading">Enter</div><br />
				<input type="button" value="English" onClick="go_english();" class="mainButton" /></td>
				<td width="60%"></td>
				<td width="20%" align="center"><div class="mainButtonHeading">Entrez</div><br />
				<input type="button" value="Français" onClick="go_french();" class="mainButton" /></td>
			</tr>
		</table>
	</Center>

</body>
</html>