app.controller('movieController', ['$scope','$http', function($scope, $http) {
    $scope.movie = {name: ''};
    $scope.singleMovie = {};
    $scope.addMovie = {};
    $scope.saveMovie = function() {
        var movieName = $scope.movie.name;
        $http.get('http://www.omdbapi.com/?t='+movieName+'&y=&plot=full&r=json')
        .success(function(data){
            var moviedata = data;
            $scope.addMovie = function (moviedata) {
                $http.post("api/addMovie.php",moviedata).success(function(data){
                    console.log("message:"+data);
                    $scope.showSuccessAlert = true;
                  });
              };
            $scope.addMovie(moviedata);
            return data;
        })
        .error(function(error){
            return error;
        });
    };
}]);