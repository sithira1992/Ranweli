angular.module('controler',[])

.controller('RepeatCtrl',['$scope',function($scope)
{
    $scope.setColors= function () {
        $scope.values=['red','green','blue']
    };
    $scope.setSize=function()
    {
      $scope.values=['1','2','3'];
    };

    $scope.getValues=function()
    {
        return $scope.values;
    }
}])
//Staff Registration Controller
.controller('StaffCtrl',['$scope','$http',function($scope, $http)
    {

        $scope.pagedItems    =  [];

        $scope.get_staff = function() {
            $http.get('db/staffRegistration.php?action=get_staff').success(function(data)
            {
                //$scope.product_detail = data;
                $scope.pagedItems = data;

            });
        }
        $scope.titles=['Staff Registration'];
        $scope.submit= function () {

            $scope.msgs = [];

            $http.post('db/staffRegistration.php?action=add_staff',{'name':$scope.name,'address':$scope.address,'gender':$scope.gender,
                'nic':$scope.nic,'phone':$scope.phone,'position':$scope.position,'email':$scope.email}).success(function(data, status, headers, config) {
                if (data.msg != '')
                {
                    $scope.msgs.push(data.msg);
                }
                else
                {
                    $scope.msgs.push(data.error);
                }
            }).error(function(data, status) { // called asynchronously if an error occurs
// or server returns response with an error status.
                $scope.msgs.push(status);

        });
        }

}])
//Suppler Registration
.controller('SupplierCtrl',['$scope','$http',function($scope, $http)
{

    $scope.submit= function () {    //subite button

        $scope.msgs = [];
        $http.post('db/suppliersRegistration.php?action=add_supplier',{'suppliername':$scope.suppliername,'supplieraddress':$scope.supplieraddress,'supplierphone':$scope.supplierphone,
            'supplieremail':$scope.supplieremail,'supplieritem':$scope.supplieritem,'supplierunitprice':$scope.supplierunitprice,'supplierstatues':$scope.supplierstatues}).success(function(data, status, headers, config) {
            if (data.msg != '')
            {
                msgs="**Suppler Register Successfully**"
                $scope.msgs.push(msgs);
            }
            else
            {
                msgs="**Not Register**"
                $scope.msgs.push(msgs);
            }
        }).error(function(data, status) { // called asynchronously if an error occurs
// or server returns response with an error status.
            $scope.msgs.push(status);

        });
    }
    $scope.get_suppliers = function() {
        $http.get('db/suppliersRegistration.php?action=get_suppliers').success(function(data)
        {
            //$scope.product_detail = data;
            $scope.pagedItems = data;

        });
    }

}])

//Item Registration Controller
.controller('ItemCtrl',['$scope','$http',function($scope, $http)
{
    $scope.pagedItems    =  [];

    $scope.get_suppliers = function() {
        $http.get('db/suppliersRegistration.php?action=get_supplier').success(function(data)
        {
            //$scope.product_detail = data;
            $scope.pagedItems = data;

        });
    }
    $scope.submit= function () {    //subite button

        $scope.msgs = [];
        $http.post('db/ItemDetails.php?action=add_item',{'suppId':$scope.suppId,'item':$scope.item,'itemunite':$scope.itemunite,
            'itemunitprice':$scope.itemunitprice,'itemquantity':$scope.itemquantity,'itemdescription':$scope.itemdescription,'itemdate':$scope.itemdate}).success(function(data, status, headers, config) {
            if (data.msg != '')
            {
                msgs="**Item Register Successfully**"
                $scope.msgs.push(msgs);
            }
            else
            {
                msgs="**Not Register**"
                $scope.msgs.push(msgs);
            }
        }).error(function(data, status) { // called asynchronously if an error occurs
// or server returns response with an error status.
            $scope.msgs.push(status);

        });
    }

  

}])
    //Site Registration Controller
.controller('SiteCtrl',['$scope','$http',function($scope, $http)
{

    $scope.submit= function () {    //subite button

        $scope.msgs = [];
        $http.post('db/SiteRegistration.php?action=add_site',{'rgAddress':$scope.rgAddress,'rgmanagername':$scope.rgmanagername,'rgstartdate':$scope.rgstartdate,
            'rgplandate':$scope.rgplandate,'rgpactualdate':$scope.rgpactualdate,'rgstatues':$scope.rgstatues}).success(function(data, status, headers, config) {
            if (data.msg != '')
            {
                msgs="**Site Register Successfully**"
                $scope.msgs.push(msgs);
            }
            else
            {
                msgs="Not Site Register"
                $scope.msgs.push(msgs);
            }
        }).error(function(data, status) { // called asynchronously if an error occurs
// or server returns response with an error status.
            $scope.msgs.push(status);

        });
    }

    $scope.get_suppliers = function() {
        $http.get('db/suppliersRegistration.php?action=get_suppliers').success(function(data)
        {
            //$scope.product_detail = data;
            $scope.details = data;

        });
    }


}])


//Request Form Controller
.controller('RequestCtrl',['$scope','$http',function($scope, $http)
{
    $scope.pagedItems    =  [];

    $scope.get_location = function() {
        $http.get('db/SiteRegistration.php?action=get_location').success(function(data)
        {
            //$scope.product_detail = data;
            $scope.locations = data;

        });
    }
    $scope.pagedItems    =  [];

    $scope.get_manager = function() {
        $http.get('db/staffRegistration.php?action=get_manager').success(function(data)
        {
            //$scope.product_detail = data;
            $scope.managers = data;

        });
    }
    $scope.submit= function () {    //subite button

        $scope.msgs = [];
        $http.post('db/RequestForm.php?action=add_request',{'locId':$scope.locId,'mngId':$scope.mngId,'item':$scope.item,
            'measure':$scope.measure,'quantity':$scope.quantity,'date':$scope.date}).success(function(data, status, headers, config) {
            if (data.msg != '')
            {
                msgs="**Order Create Successfully**"
                $scope.get_Order_details();
                $scope.msgs.push(msgs);
            }
            else
            {
                msgs="**Order Not Create Successfully**"
                $scope.msgs.push(msgs);
            }
        }).error(function(data, status) { // called asynchronously if an error occurs
// or server returns response with an error status.
            $scope.msgs.push(status);

        });
    }

    $scope.get_Order_details = function() {
        $http.get('db/RequestForm.php?action=get_OrderDetails').success(function(data)
        {
            //$scope.product_detail = data;
            $scope.details = data;

        });
    }

}]);