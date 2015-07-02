<?php include 'header.php';?>
<?php include 'NavBar.php';?>

<div class="well">
    <!--header -->
    <h1 align="center">Request Form </h1>



</div>

<!--Site Name-->
</div>
<form class="form-inline" role="form">
    <div class="control-label col-sm-3">
        <div class="col-xs-4">
        </div>
    </div>
    <div class="form-group has-success has-feedback">
       <label for="sitename" class="control-label" style="padding-right:40px">Site Name</label>
        <input class="form-control" id="sitename" type="text"placeholder="Enter Site Name">
    </div>
</form>

</br>
</br>


<!--Site Location-->
<form class="form-inline" role="form">
    <div class="control-label col-sm-3">
        <div class="col-xs-4">
        </div>
    </div>
    <div class="form-group has-success has-feedback">
        <label for="location" class="control-label" style="padding-right:50px">Location</label>
        <input class="form-control" id="location" type="text"placeholder="Enter Site Location">
    </div>
</form>

</br>
</br>


<!--Site Manager Name-->
<form class="form-inline" role="form">
    <div class="control-label col-sm-3">
        <div class="col-xs-4">
        </div>
    </div>
    <div class="form-group has-success has-feedback">
        <label for="manager" class="control-label" style="padding-right:50px">Manager</label>
        <input class="form-control" id="manager" type="text"placeholder="Enter Manager Name">
    </div>
</form>

</br>
</br>

<!--Item Name-->
<form class="form-inline" role="form">
    <div class="control-label col-sm-3">
        <div class="col-xs-4">
        </div>
    </div>
    <div class="form-group has-success has-feedback">
        <label for="item" class="control-label" style="padding-right:80px">Item</label>
        <input class="form-control" id="item" type="text"placeholder="Enter Item Name">
    </div>
</form>

</br>
</br>


<!--Type of measure -->
<form class="form-inline" role="form">
    <div class="control-label col-sm-3">
        <div class="col-xs-4">
        </div>
    </div>
    <div class="form-group has-success has-feedback">
        <label for="type" class="control-label" style="padding-right:80px">Unit</label>
        <div id="type" title="" style="width: 100px;" class="chosen-container chosen-container-single" >
            <a class="chosen-single" tabindex="-2">
                <span>Choose</span>
                <div><b></b></div>
            </a><div class="chosen-drop" style="padding-right:10px">
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

            <div class="form-group has-success has-feedback">
            <label for="quantity" class="control-label" style="padding-right:10px">Quantity</label>
            <input class="form-control" id="quantity" type="text" style="width: 100px" placeholder="Qty">
        </div>

        </form>


</br>
</br>
</br>


<!--Date-->
<form class="form-inline" role="form">
    <div class="control-label col-sm-3">
        <div class="col-xs-4">
        </div>
    </div>
    <div class="form-group has-success has-feedback">
        <label for="date" class="control-label" style="padding-right:80px">Date</label>
        <input class="form-control" id="date" type="text"placeholder="Enter Date">
    </div>
</form>


</br>
</br>
</br>


<!--Send button-->
<form class="form-inline" role="form">
    <div class="control-label col-sm-11">
        <div class="col-xs-4">
        </div>
        <button type="submit" class="btn btn-primary">Send</button>
        <button type="cancel" class="btn btn-primary">Cancel</button>
    </div>
</form>

</br>
</br>
</br>