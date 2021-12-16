<%@ include file="nav-bar.jsp" %>
<div class='container my-2'>
 <div class='card'>
  <div class='card-body'>
     <form action='updaterecord' method='post'>
       <div class='row'>
         <div class='form-group col-md-10'>
           <label for='pid' class='col-form-label cl'>Person Id </label>
           <input type='text' id='pid' name='pid' readonly="readonly" value='${person.pid}' class='form-control la' required>
         </div>
         <div class='form-group col-md-10'>
           <label for='firstname' class='col-form-label cl'>First name</label>
           <input type='text' id='firstname' name='firstname'  value='${person.firstname}' class='form-control la' required>
         </div>
         <div class='form-group col-md-10'>
           <label for='lastname' class='col-form-label lc'>Last name</label>
           <input type='text' id='lastname' name='lastname'  value='${person.lastname}' class='form-control la' required>
         </div>
         <div class='form-group col-md-10'>
           <label for='city' class='col-form-label cl'>City</label>
           <input type='text' id='city' name='city'  value='${person.city}' class='form-control la' required>
         </div>
         <div class='form-group col-md-10'>
           <label for='phone' class='col-form-label cl'>Phone number</label>
           <input type='text' id='phone' name='phone'  value='${person.phone}' class='form-control la' required>
         </div>
         <div class='form-group col-md-10'>
           <label for='email' class='col-form-label cl'>Email</label>
           <input type='text' id='email' name='email'  value='${person.email}' class='form-control la' required>
         </div>
         <div class='form-group col-md-10'>
          <button class='btn btn-primary'>Update Record</button>
         </div>
       </div>
     </form>
  </div>
 </div>
</div>