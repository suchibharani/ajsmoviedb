var app = angular.module('ajsMoviedb',['ngRoute']);
app.config(function($routeProvider){
    $routeProvider
    .when('/movie',{
        controller : 'movieController',
        templateUrl: 'views/dashboard.html'
    })
    .when('/addnew',{
        controller : 'movieController',
        templateUrl: 'views/addnew.html'
    })
    .when('/movie/:id',{
        controller : 'singleController',
        templateUrl: 'views/single.html'
    })
    .otherwise({
        redirectTo : '/movie'
    })
    
});