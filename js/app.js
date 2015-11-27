var app = angular.module('ajsMoviedb',['ngRoute']);
app.config(function($routeProvider){
    $routeProvider
    .when('/',{
        controller : 'movieController',
        templateUrl: 'views/dashboard.html'
    })
    .when('/addnew',{
        controller : 'movieController',
        templateUrl: 'views/addnew.html'
    })
    .otherwise({
        redirectTo : '/'
    })
    
});