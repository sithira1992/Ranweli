<section xmlns="http://www.w3.org/1999/html">
<?php include 'header.php';?>
<?php include 'NavBar.php';?>


    <!--header -->
    <div class="control-header col-sm-9">
    <h1 align="center">Request Form </h1>



</div>

    </br>
    </br>
    </br>
    </br>
    </br>
    </br>

    <!--Site Name-->
</div>

<!--form class="form-inline" role="form"-->
<form class="form-inline" role="form">
    <div class="control-label col-sm-2">
        <div class="col-xs-4">
        </div>
    </div>
    <div class="form-group has-success has-feedback">


        <label for="sitename" class="control-label" style="padding-right:40px">Site Name</label>
        <div class="input-group input-group-md">
            <span class="input-group-addon"><i class="glyphicon glyphicon-hand-right red"></i></span>


        <input class="form-control" id="sitename" ng-model="name" type="text"placeholder="Enter Site Name">



    </div>
        </div>
<!--/form-->

</br>
</br>


<!--Site Location-->
<!--form class="form-inline" role="form"-->
    <div class="control-label col-sm-2">
        <div class="col-xs-4">
        </div>
    </div>
    <div class="form-group has-success has-feedback">
        <label for="location" class="control-label" style="padding-right:50px">Location</label>
        <div class="input-group input-group-md">
            <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker red"></i></span>
        <input class="form-control" id="location" ng-model="location" type="text"placeholder="Enter Site Location">
    </div>
        </div>
<!--/form-->

</br>
</br>


<!--Site Manager Name-->
<!--form class="form-inline" role="form"-->
    <div class="control-label col-sm-2">
        <div class="col-xs-4">
        </div>
    </div>
    <div class="form-group has-success has-feedback">
        <label for="manager" class="control-label" style="padding-right:50px">Manager</label>
        <div class="input-group input-group-md">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user red"></i></span>
        <input class="form-control" id="manager" ng-model="managername" type="text"placeholder="Enter Manager Name">
    </div>
        </div>
<!--/form-->

</br>
</br>

<!--Item Name-->
<!--form class="form-inline" role="form"-->
    <div class="control-label col-sm-2">
        <div class="col-xs-4">
        </div>
    </div>
    <div class="form-group has-success has-feedback">
        <label for="item" class="control-label" style="padding-right:80px">Item</label>
        <div class="input-group input-group-md">
            <span class="input-group-addon"><i class="glyphicon glyphicon-th-list red"></i></span>
        <input class="form-control" id="item" type="text" ng-model="item"placeholder="Enter Item Name">
    </div>
<!--/form-->

</br>
</br>


<!--Type of measure -->
<!--form class="form-inline" role="form"-->
        <form class="form-inline" role="form">
        <div class="control-label col-sm-2">
            <div class="col-xs-4">
            </div>
        </div>
        <div class="form-group has-success has-feedback">
            <label for="Position" class="control-label" style="padding-right:80px">Unit</label>
            <select class="form-control" style="width:220px" ng-model="measure">
                <option value="cube">Cube</option>
                <option value="Kg">Kg</option>
                <option value="Bags">Bags</option>
                <option value="audi">Audi</option>
            </select>
        </div>

        </div>
    <!--/form-->

        <!--/form-->

</br>
</br>
    </br>

<!--Quntity-->
    <div class="control-label col-sm-2">
        <div class="col-xs-4">
        </div>
    </div>
    <div class="form-group has-success has-feedback">
        <label for="quantity" class="control-label" style="padding-right:52px">Quantity</label>
        <div class="input-group input-group-md">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tasks red"></i></span>
            <input class="form-control" id="quantity"  ng-model="quantity" input type="text" required placeholder="Enter Quantity">
        </div>
    </div>
    <!--/form-->


</br>
</br>
</br>



    <!--Date-->
<!--form class="form-inline" role="form"-->
    <div class="control-label col-sm-2">
        <div class="col-xs-4">
        </div>
    </div>
    <div class="form-group has-success has-feedback">
        <label for="date" class="control-label" style="padding-right:75px">Date</label>
        <input class="form-control" id="date" type="text"placeholder="Enter Date">
    </div>
<!--/form-->


</br>
</br>
</br>


<!--Send button-->
<!--form class="form-inline" role="form"-->
    <div class="col-md-6 center-block">
        <div class="col-xs-4">
        </div>
        <button type="submit" class="btn btn-primary">Send</button>
        <button type="cancel" class="btn btn-primary">Cancel</button>
    </div>
</form>
    </form>

</br>
</br>
</br>


    </section>