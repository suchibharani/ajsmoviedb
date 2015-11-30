app.controller('movieController', ['$scope','$http', function($scope, $http) {
    $scope.movie = {name: ''};
    $scope.singleMovie = {};
    $scope.addMovie = {};
    $scope.saveMovie = function() {
        var movieName = $scope.movie.name;
        $http.get('http://www.omdbapi.com/?t='+movieName+'&y=&plot=full&r=json')
        .success(function(data){
            var moviedata = data;
//            var str = Object.keys(data).map(function(key){ 
//  return encodeURIComponent(key) + '=' + encodeURIComponent(data[key]); 
//}).join('&');
//
//console.log(str);
            //"version=22&who=234234234234"
            $scope.addMovie = function (moviedata) {
                $http.post("api/addMovie.php",moviedata).success(function(data){
                    //console.log(moviedata);
                    console.log("title:"+data);
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