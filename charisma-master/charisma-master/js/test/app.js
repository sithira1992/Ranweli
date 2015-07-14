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
                    when('/ItemDetails',
                    {
                        templateUrl: 'partials/ItemDetails.html',
                        controller: 'ItemCtrl'

                    }).
                    when('/SiteRegistration',
                    {
                        templateUrl: 'partials/SiteRegistration.html',
                        controller: 'SiteCtrl'

                    }).
                    when('/test',
                    {
                        templateUrl: 'partials/test.html',
                        controller: 'SiteCtrl'

                    }).

                    when('/Requestform',
                    {
                        templateUrl: 'partials/Requestform.html',
                        controller: 'RequestCtrl'

                    }).
        otherwise({
            redirectTo: '/blank.html'
        })

    //$locationProvider.html5Mode(true);
}])




