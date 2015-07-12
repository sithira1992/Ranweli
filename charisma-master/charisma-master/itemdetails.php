<section xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
    <?php include 'header.php';?>
    <?php include 'NavBar.php';?>


    <!--header -->
    <div class="control-header col-sm-8">
        <h1 align="center">Item Details </h1>
    </div>

    </br>
    </br>
    </br>
    </br>
    </br>
    </br>


    <!--Supplire names -->
    <form class="form-inline" role="form" ng-submit="submit()" ng-controller="FormCtrl">
        <div class="control-label col-sm-1">
            <div class="col-xs-4">
            </div>
        </div>
        <div class="form-group has-success has-feedback">
            <label for="Position" class="control-label" style="padding-right:15px">Supplier Name</label>
            <select class="form-control" style="width:270px" ng-model="name">
                <option value="volvo">Volvo</option>
                <option value="saab">Saab</option>
                <option value="opel">Opel</option>
                <option value="audi">Audi</option>
            </select>
        </div>

        </div>

        </br>
        </br>
        </br>

<!--Item Name-->
        <div class="control-label col-sm-1">
            <div class="col-xs-4">
            </div>
        </div>
        <div class="form-group has-success has-feedback">
            <label for="item" class="control-label" style="padding-right:30px">Supply Itam</label>
            <div class="input-group input-group-md">
                <span class="input-group-addon"><i class="glyphicon glyphicon-th-list red"></i></span>
                <input class="form-control" id="item" ng-model="item" input type="text" required placeholder="Enter Item Name">
            </div>
        </div>
</br>
        </br>
        </br>

        <!--Unite Price-->

        <div class="control-label col-sm-1">
            <div class="col-xs-4">
            </div>
        </div>
        <div class="form-group has-success has-feedback">
            <label for="unitprice" class="control-label" style="padding-right:38px">Unite Price</label>
            <div class="input-group input-group-md">
                <span class="input-group-addon"><i class="glyphicon glyphicon-usd red"></i></span>
                <input class="form-control" id="unitprice"  ng-model="unitprice" input type="text" required placeholder="Enter Unite Price">
            </div>
        </div>

        </br>
        </br>
        </br>
        </br>

        <!--Quantity-->

        <div class="control-label col-sm-1">
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







        </br>
        </br>
        </br>
        </br>

        <!--subit button-->

        <div class="col-md-6 center-block">
            <div class="col-xs-0">
            </div>
            <button type="submit" ng-click='submit()' class="btn btn-primary">Submit</button>
            <button type="supplierclear" class="btn btn-primary">Clear</button>
            <button type="suppliercancel" class="btn btn-primary">Cancel</button>
        </div>



        <div class="alert-danger" ng-repeat="msg in msgs"> {{ msg}}

        </div>





  </form>
    </section>