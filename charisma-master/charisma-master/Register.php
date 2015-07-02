<?php include 'header.php';?>
<?php include 'NavBar.php';?>

<div class="well">
    <!--header -->
    <h1 align="center">Registeration </h1>



</div>

</br>
</br>
</br>
</br>



<!--Name-->
</div>
<form class="form-inline" role="form">
    <div class="control-label col-sm-3">
    <div class="col-xs-4">
        </div>
        </div>
       <div class="form-group has-success has-feedback">


        <label for="fullname" class="control-label" style="padding-right:40px">Full Name</label>


        <input class="form-control" id="fullname" type="text"placeholder="Name With Initial">



    </div>


</form>

</br>
</br>

<!--address-->
<form class="form-inline" role="form">
    <div class="control-label col-sm-3"></div>
    <div class="form-group has-success has-feedback">
        <label for="address" class="control-label" style="padding-right:50px">Address</label>
        <textarea class="form-control" rows="4" id="address"placeholder="Address" style="width: 220px"></textarea>
   </div>
</form>
</br>
</br>


<!--Gender-->
<form class="form-inline" role="form">
    <div class="control-label col-sm-3"></div>
    <div class="form-group has-success has-feedback">
        <label for="gender" class="control-label" style="padding-right:60px">Gender</label>
        <div class="radio">
            <label>
                <input name="male" id="male" value="option1" checked="" type="radio">
                Male
                <label>
                    <input name="female" id="female" value="option2" checked="" type="radio">
                    Female
                </label>
            </label>
        </div>
    </div>
</form>
</br>
</br>


<!-- NIC Number-->
<form class="form-inline" role="form">
    <div class="control-label col-sm-3">
        <div class="col-xs-4">
        </div>
    </div>
    <div class="form-group has-success has-feedback">
        <label for="nic" class="control-label" style="padding-right:90px">NIC</label>
        <input class="form-control" id="nic" type="text"placeholder="NIC Number">
    </div>
</form>

</br>
</br>


<!--Phone Number-->
<form class="form-inline" role="form">
    <div class="control-label col-sm-3">
        <div class="col-xs-4">
        </div>
    </div>
    <div class="form-group has-success has-feedback">
        <label for="phone" class="control-label" style="padding-right:70px">Phone</label>
        <input class="form-control" id="phone" type="text"placeholder="Phone Number">
    </div>
</form>

</br>
</br>

<!--position-->
<form class="form-inline" role="form">
    <div class="control-label col-sm-3">
        <div class="col-xs-4">
        </div>
    </div>
    <div class="form-group has-success has-feedback">
        <label for="Position" class="control-label" style="padding-right:60px">Position</label>
        <div id="position" title="" style="width: 100px;" class="chosen-container chosen-container-single">
            <a class="chosen-single" tabindex="-2">
                <span>Choose</span>
                <div><b></b></div>
            </a><div class="chosen-drop">
                <div class="chosen-search">
                    <input autocomplete="off" type="text"></div>
                <ul class="chosen-results">
                    <li data-option-array-index="0" style="" class="active-result result-selected">Option 1</li>
                    <li data-option-array-index="1" style="" class="active-result">Option 2</li>
                    <li data-option-array-index="2" style="" class="active-result">Option 3</li>
                    <li data-option-array-index="3" style="" class="active-result">Option 4</li>
                    <li data-option-array-index="4" style="" class="active-result">Option 5</li>
                </ul>
            </div>
        </div>

        </br>
        </br>
        </br>

        <!--Email-->
        <form class="form-inline" role="form">
            <div class="control-label col-sm-3">
                <div class="col-xs-4">
                </div>
            </div>
            <div class="form-group has-success has-feedback">
                <label for="phone" class="control-label" style="padding-right:80px">Email</label>
                <input class="form-control" id="email" type="text"placeholder="Email Address">
            </div>
        </form>

        </br>
        </br>
        </br>
        </br>


        <!--subit button-->
        <form class="form-inline" role="form">
            <div class="control-label col-sm-11">
                <div class="col-xs-4">
                </div>
        <button type="submit" class="btn btn-primary">Submit</button>
                <button type="clear" class="btn btn-primary">Clear</button>
                <button type="cancel" class="btn btn-primary">Cancel</button>
            </div>
        </form>

        </br>
        </br>
        </br>
        </br>






