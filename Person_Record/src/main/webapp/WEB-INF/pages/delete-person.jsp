<%@ include file="nav-bar.jsp" %>
<form action="deleterecord"> 
<table class='ta'>
 <tr>
  <th class='td'>Enter person id:</th>
  <td class='td'><input type="text" name='pid' class='tb' required placeholder='Type here'></td>
  <td class='td'><button class='btn btn-primary'>Delete Record</button></td>
 </tr>
</table>
<div class='dv'>
 <h3 style='color:red'>${msg}</h3>
</div>
</form>