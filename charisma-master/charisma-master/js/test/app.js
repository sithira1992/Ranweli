/**
 * Created by Administrator on 7/11/2015.
 */
var  myApp=angular.module('myApp',[
    'ngRoute',
    'staffRegistration'

]);

myApp.config(['$routeProvider',function($routeProvider){

                $routeProvider.
                    when('/StaffRegistration',
                {
                    templateUrl: 'partials/Register.html',
                    controller: 'StaffCtrl'

                }).
                when('/SupplierRegistration',
                {
                    templateUrl: 'partials/SupplierDetails.html',
                    controller: 'SupplierCtrl'

                }).
                    when('/AddSupplierItemDetails',
                    {
                        templateUrl: 'partials/ItemDetails.html',
                        controller: 'ItemCtrl'

                    }).
                    when('/SiteRequestForm',
                    {
                        templateUrl: 'partials/SiteRequestForm.html',
                        controller: 'ItemCtrl'

                    }).
        otherwise({
            redirectTo: '/blank.html'
        })

    //$locationProvider.html5Mode(true);
}])




