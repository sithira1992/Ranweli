/**
 * Created by Administrator on 7/11/2015.
 */
var  myApp=angular.module('myApp',[
    'ngRoute',
    'controler'

]);

myApp.config(['$routeProvider',function($routeProvider){

                $routeProvider.
                    when('/StaffRegistration/',
                {
                    templateUrl: './partials/Register.html',
                    controller: 'StaffCtrl'

                }).
                when('/SupplierRegistration',
                {
                    templateUrl: './partials/SupplierDetails.html',
                    controller: 'SupplierCtrl'

                }).
                    when('/AddSupplierItemDetails',
                    {
                        templateUrl: './partials/ItemDetails.html',
                        controller: 'ItemCtrl'

                    }).
                    when('/SiteRequestForm',
                    {
                        templateUrl: 'partials/SiteRequestForm.html',
                        controller: 'ItemCtrl'

                    }).
                    when('/ItemDetails',
                    {
                        templateUrl: './partials/ItemDetails.html',
                        controller: 'ItemCtrl'

                    }).
                    when('/SiteRegistration',
                    {
                        templateUrl: './partials/SiteRegistration.html',
                        controller: 'SiteCtrl'

                    }).
                    when('/test',
                    {
                        templateUrl: './partials/test.html',
                        controller: 'SiteCtrl'

                    }).

                    when('/OrderRequestForm',
                    {
                        templateUrl: './partials/OrderRequestForm.html',
                        controller: 'RequestCtrl'

                    }).
                    when('/UpdateRegister',
                    {
                        templateUrl: './partials/UpdateRegister.html',
                        controller: 'StaffCtrl'

                    }).
                    when('/UpdateSupplierDetails',
                    {
                        templateUrl: './partials/UpdateSupplierDetails.html',
                        controller: 'SupplierCtrl'

                    }).
                    when('/UpdateSiteDetails',
                    {
                        templateUrl: './partials/UpdateSiteDetails.html',
                        controller: 'SiteCtrl'

                    }).
        otherwise({
            redirectTo: '/OrderRequestForm.html'
        });




    //$locationProvider.html5Mode(true);
}])




