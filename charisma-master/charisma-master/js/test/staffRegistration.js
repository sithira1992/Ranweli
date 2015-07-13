angular.module('staffRegistration',[])

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

.controller('StaffCtrl',['$scope','$http',function($scope, $http)
    {
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

.controller('SupplierCtrl',['$scope','$http',function($scope, $http)
{

    $scope.submit= function () {    //subite button

        $scope.msgs = [];
        $http.post('db/suppliersRegistration.php?action=add_supplier',{'suppliername':$scope.suppliername,'supplieraddress':$scope.supplieraddress,'supplierphone':$scope.supplierphone,
            'supplieremail':$scope.supplieremail,'supplieritem':$scope.supplieritem,'supplierunitprice':$scope.supplierunitprice,'supplierstatues':$scope.supplierstatues}).success(function(data, status, headers, config) {
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


.controller('ItemCtrl',['$scope','$http',function($scope, $http,$window)
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

.controller('SiteCtrl',['$scope','$http',function($scope, $http)
{

    $scope.submit= function () {    //subite button

        $scope.msgs = [];
        $http.post('db/SiteRegistration.php?action=add_site',{'rgAddress':$scope.rgAddress,'rgmanagername':$scope.rgmanagername,'rgstartdate':$scope.rgstartdate,
            'rgplandate':$scope.rgplandate,'rgpactualdate':$scope.rgpactualdate,'rgstatues':$scope.rgstatues}).success(function(data, status, headers, config) {
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

}]);