app.factory('movieservice',['$http',function($http){
 return $http.get('api/getMovie.php')
 .success(function(data){
     return data;
 })
 .error(function(error){
     return error;
 });
 
}]);