<%@ include file="nav-bar.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class='container my-2'>
 <div class='card'>
  <div class='card-body'>
   <div class='table table-responsive'>
     <table class='table table-bordered table-hover'>
      <thead>
       <tr>
        <th>Person Id</th><th>First name</th><th>Last name</th><th>City</th><th>Phone</th><th>Email</th>
       </tr>
      </thead>
      <tbody>
       <c:forEach var='person' items="${personlist}">
        <tr>
         <td>${person.pid}</td>
         <td>${person.firstname}</td>
         <td>${person.lastname}</td>
         <td>${person.city}</td>
         <td>${person.phone}</td>
         <td>${person.email}</td>
        </tr>
       </c:forEach>
      </tbody>
     </table>
  </div>
 </div>
</div>
