app.controller('movieController', ['$scope','$http','$timeout','movieservice','$route','$location','$window', function($scope, $http, $timeout,movieservice,$route, $location, $window) {
    $scope.movie = {name: ''};
    $scope.singleMovie = {};
    $scope.addMovie = {};
    $scope.hideError = false;
    $scope.hideSuccess = false;
    $scope.doFade = false;
    $scope.opmessage = "";
    $scope.saveMovie = function() {
        var movieName = $scope.movie.name;
        $http.get('http://www.omdbapi.com/?t='+movieName+'&y=&plot=full&r=json')
        .success(function(data){
            var moviedata = data;
            $scope.addMovie = function (moviedata) {
                $http.post("api/addMovie.php",moviedata).success(function(data){
                    var statusMsg = data;
                    console.log(statusMsg);
                    if(statusMsg == "error"){
                        $scope.hideError = true;
                        $scope.hideSuccess = false;
                        $scope.opmessage = "Movie not found.";
                        
                    }else if(statusMsg == "exist"){
                        $scope.hideError = true;
                        $scope.hideSuccess = false;
                        $scope.opmessage = "Movie already exist.";
                    }else{
                         $scope.hideSuccess = true;
                        $scope.hideError = false;
                        $scope.opmessage = "Movie added successfully.";
                    }
                  });
                $timeout(function(){
                   $scope.hideError = false;
                   $scope.hideSuccess = false;
                }, 2500);
              };
            $scope.addMovie(moviedata);
            return data;
        })
        .error(function(error){
            return error;
        });
    };
    function getMovie(){ 
        $http.get('api/getMovie.php')
         .success(function(data){
             $scope.movies = data; 
         });
//        movieservice.success(function(data){
//            console.log(data);
//            $scope.movies = data;     
//        });
    }
    getMovie();
    $scope.deleteMovie = function(movieId){
        if(confirm("Are you sure to delete this movie?")){
            $http.post("api/deleteMovie.php?movieId="+movieId+"status="+0).success(function(data){
                console.log(data);
                getMovie();
              });
            }
    };
	$scope.reloadApp = function(){
         //getMovie();
		 $location.path('/movie');
         $window.location.reload(); 
	};
}]);