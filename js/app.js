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
    .when('/manage',{
        controller : 'movieController',
        templateUrl: 'views/manage.html'
    })
     .when('/movie/:id/edit',{
        controller : 'singleController',
        templateUrl: 'views/edit.html'
    })
    .otherwise({
        redirectTo : '/movie'
    })
    
});