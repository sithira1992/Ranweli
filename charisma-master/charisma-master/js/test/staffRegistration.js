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

.controller('FormCtrl',['$scope','$http',function($scope, $http)
    {
        $scope.submit= function () {

            $scope.msgs = [];
            $http.post('db/staffRegistration.php',{'name':$scope.name,'address':$scope.address,'gender':$scope.gender,
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

}]);