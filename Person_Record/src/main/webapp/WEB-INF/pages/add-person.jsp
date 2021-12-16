<%@ include file="nav-bar.jsp" %>
<div class='container my-2'>
 <div class='card'>
  <div class='card-body'>
     <form action='save-record' method='post'>
       <div class='row'>
         <div class='form-group col-md-10'>
           <label for='pid' class='col-form-label cl'>Enter Person Id <span>*</span></label>
           <input type='text' id='pid' name='pid' class='form-control la' required placeholder='Type here'>
         </div>
         <div class='form-group col-md-10'>
           <label for='firstname' class='col-form-label cl'>Enter First name <span>*</span></label>
           <input type='text' id='firstname' name='firstname' class='form-control la' required placeholder='Type here'>
         </div>
         <div class='form-group col-md-10'>
           <label for='lastname' class='col-form-label cl'>Enter Last name <span>*</span></label>
           <input type='text' id='lastname' name='lastname' class='form-control la' required placeholder='Type here'>
         </div>
         <div class='form-group col-md-10'>
           <label for='city' class='col-form-label cl'>Enter City <span>*</span></label>
           <input type='text' id='city' name='city' class='form-control la' required placeholder='Type here'>
         </div>
         <div class='form-group col-md-10'>
           <label for='phone' class='col-form-label cl'>Enter Phone number <span>*</span></label>
           <input type='text' id='phone' name='phone' class='form-control la' required placeholder='Type here'>
         </div>
         <div class='form-group col-md-10'>
           <label for='email' class='col-form-label cl'>Enter Email <span>*</span></label>
           <input type='text' id='email' name='email' class='form-control la' required placeholder='Type here'>
         </div>
         <div class='form-group col-md-10'>
          <button class='btn btn-primary'>Save Record</button>
         </div>
       </div>
     </form>
  </div>
 </div>
</div>