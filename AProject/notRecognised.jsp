<table>
<tr>
<td colspan="2"><%@include file="top.jsp" %></td>
</tr>
<tr>
<td height="350" width="95" ><%@ include file="left.jsp" %></td>
<td><div style="background-color:yellow;"><%=  "The address "+request.getParameter("to1")+" in the 'To' field was not recognized. Please make sure that all addresses are properly formed."  %></div><%@include file="compose.jsp" %></td>
</tr>
</table>