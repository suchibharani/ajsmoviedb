app.controller('movieController', ['$scope','$http','$timeout','movieservice',function($scope, $http, $timeout,movieservice) {
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
    movieservice.success(function(data){
        console.log(data);
        $scope.movies = data;
    });
}]);