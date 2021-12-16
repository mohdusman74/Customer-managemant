<%@ include file="nav-bar.jsp" %>
<table border='1' class='ta' style='width:40%'>
  <tr>
   <th class='td cl'>Person id</th>
   <td  class='td la'>${person.pid}</td>
  </tr>
  <tr>
   <th class='td cl'>Person First Name</th>
   <td  class='td la'>${person.firstname}</td>
  </tr>
  <tr>
   <th class='td cl'>Person Last name</th>
   <td  class='td la'>${person.lastname}</td>
  </tr>
  <tr>
   <th class='td cl'>Person City</th>
   <td  class='td la'>${person.city}</td>
  </tr>
  <tr>
   <th class='td cl'>Person Phone number</th>
   <td  class='td la'>${person.phone}</td>
  </tr>
  <tr>
   <th class='td cl'>Person Email Id</th>
   <td  class='td la'>${person.email}</td>
  </tr>
</table>