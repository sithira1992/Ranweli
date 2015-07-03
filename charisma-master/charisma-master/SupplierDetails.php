<?php include 'header.php';?>
<?php include 'NavBar.php';?>

<div class="well">
    <!--header -->
    <h1 align="center">Supplier  </h1>



</div>
<!--Supplier Name-->
</div>
<form class="form-inline" role="form">
    <div class="control-label col-sm-3">
        <div class="col-xs-4">
        </div>
    </div>
    <div class="form-group has-success has-feedback">
        <label for="suppliername" class="control-label" style="padding-right:70px">Name</label>

        <input class="form-control" id="suppliername" name="name" type="text"placeholder="Enter Name" value="" aria-describedby="name-format" required pattern="([A-Za-z])">
    </div>

</br>
</br>

<!--Supplier address-->

    <div class="control-label col-sm-3"></div>
    <div class="form-group has-success has-feedback">
        <label for="supplieraddress" class="control-label" style="padding-right:50px">Address</label>
        <textarea class="form-control" rows="4" id="supplieraddress"placeholder="Enter Address" style="width: 220px"></textarea>
    </div>

</br>
</br>

<!--Phone Number-->

    <div class="control-label col-sm-3">
        <div class="col-xs-4">
        </div>
    </div>
    <div class="form-group has-success has-feedback">
        <label for="supplierphone" class="control-label" style="padding-right:65px">Phone</label>
        <input class="form-control" id="supplierphone" type="text"placeholder="Phone Number " pattern="[0-7-9]{1}[0-9]{9}">
    </div>


</br>
</br>
<!--Email-->

    <div class="control-label col-sm-3">
        <div class="col-xs-4">
        </div>
    </div>
    <div class="form-group has-success has-feedback">
        <label for="supplieremail" class="control-label" style="padding-right:74px">Email</label>
        <input class="form-control" id="supplieremail" input type="email" required placeholder="Email Address">
    </div>


</br>
</br>

<!--Supplier statues-->

    <div class="control-label col-sm-3"></div>
    <div class="form-group has-success has-feedback">
        <label for="supplierstatues" class="control-label" style="padding-right:55px">Statues</label>
        <textarea class="form-control" rows="4" id="supplierstatues"placeholder="Enter Ststues" style="width: 220px"></textarea>

    </div>

</br>
</br>
</br>
</br>

<!--subit button-->

    <div class="col-md-6 center-block">
        <div class="col-xs-4">
        </div>
        <button type="suppliersubmit" class="btn btn-primary">Submit</button>
        <button type="supplierclear" class="btn btn-primary">Clear</button>
        <button type="suppliercancel" class="btn btn-primary">Cancel</button>
    </div>
</form>

</br>
</br>
</br>
</br>

