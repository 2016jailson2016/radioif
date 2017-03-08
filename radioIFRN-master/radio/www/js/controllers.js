angular.module('app.controllers', [])

.controller('rDioIFRNCtrl', ['$scope', '$stateParams', // The following is the constructor function for this page's controller. See https://docs.angularjs.org/guide/controller
// You can include any angular dependencies as parameters for this function
// TIP: Access Route Parameters for your page via $stateParams.parameterName
function ($scope, $stateParams) {


}])
   
.controller('loginCtrl', ['$scope', '$stateParams', // The following is the constructor function for this page's controller. See https://docs.angularjs.org/guide/controller
// You can include any angular dependencies as parameters for this function
// TIP: Access Route Parameters for your page via $stateParams.parameterName
function ($scope, $stateParams) {


}])
   
.controller('menuCtrl', ['$scope', '$stateParams', // The following is the constructor function for this page's controller. See https://docs.angularjs.org/guide/controller
// You can include any angular dependencies as parameters for this function
// TIP: Access Route Parameters for your page via $stateParams.parameterName
function ($scope, $stateParams) {


}])
   
.controller('administradorCtrl', // The following is the constructor function for this page's controller. See https://docs.angularjs.org/guide/controller
// You can include any angular dependencies as parameters for this function
// TIP: Access Route Parameters for your page via $stateParams.parameterName
function ($scope, $http) {
  $scope.usuarios = [];

  $http.get('http://localhost:3000/api/users').then(
    function(data) {
      // se deu certo
      $scope.usuarios = data.data.Users;
      console.log($scope.usuarios);
      console.log("Deu certo");
  }, function(data) {
      // se deu erro
      console.log('erro!');
      console.log(data);
  });

  $scope.musicas = [];

$scope.cadastroMusica=function(mus){
    console.log(mus);
    
   $http.post('http://localhost:3000/api/music',mus).then(
    function(data) {
      // se deu certo
      $scope.musicas=data.data.Music;
      console.log("Deu certo");
  }, function(data) {
      // se deu erro
      console.log('erro!');
      console.log(data);
  });
}
})
   
.controller('cadastrarCtrl',
function ($scope, $http){

    $scope.usuarios = [];

$scope.cadastro=function(obj){
    
   $http.post('http://localhost:3000/api/users',obj).then(
    function(data) {
      // se deu certo
      $scope.usuarios=data.data.Users;
      console.log("Deu certo");
  }, function(data) {
      // se deu erro
      console.log('erro!');
      console.log(data);
  });
}
 

})
  
  


   
.controller('playlistCtrl',
function ($scope, $http) {

  $scope.musicas = [];
$http.get('http://localhost:3000/api/music').then(
    function(data) {
      // se deu certo
      $scope.musicas = data.data.Music;
      console.log($scope.musicas);
      console.log("Deu certo");
  }, function(data) {
      // se deu erro
      console.log('erro!');
      console.log(data);
  });

})
   
.controller('top10Ctrl', ['$scope', '$stateParams', // The following is the constructor function for this page's controller. See https://docs.angularjs.org/guide/controller
// You can include any angular dependencies as parameters for this function
// TIP: Access Route Parameters for your page via $stateParams.parameterName
function ($scope, $stateParams) {


}])
   
.controller('muralCtrl', ['$scope', '$stateParams', // The following is the constructor function for this page's controller. See https://docs.angularjs.org/guide/controller
// You can include any angular dependencies as parameters for this function
// TIP: Access Route Parameters for your page via $stateParams.parameterName
function ($scope, $stateParams) {


}])
   
.controller('notCiasCtrl', ['$scope', '$stateParams', // The following is the constructor function for this page's controller. See https://docs.angularjs.org/guide/controller
// You can include any angular dependencies as parameters for this function
// TIP: Access Route Parameters for your page via $stateParams.parameterName
function ($scope, $stateParams) {


}])
   
.controller('sugestEsCtrl', 
function ($scope, $http) {
$scope.sugestoes = [];

  $http.get('http://localhost:3000/api/sugest').then(
    function(data){
      // se deu certo
      $scope.sugestoes = data.data.Sugest;
      console.log($scope.sugestoes);
      console.log("Deu certo");
  }, function(data){
      // se deu erro
      console.log('erro!');
      console.log(data);
  });

})
   
.controller('procurarMSicaCtrl',  // The following is the constructor function for this page's controller. See https://docs.angularjs.org/guide/controller
// You can include any angular dependencies as parameters for this function
// TIP: Access Route Parameters for your page via $stateParams.parameterName
function ($scope, $stateParams) {
console.log('UserRetrieveController');


})
   
.controller('recuperarSenhaCtrl', ['$scope', '$stateParams', // The following is the constructor function for this page's controller. See https://docs.angularjs.org/guide/controller
// You can include any angular dependencies as parameters for this function
// TIP: Access Route Parameters for your page via $stateParams.parameterName
function ($scope, $stateParams) {


}])
   
.controller('contatoCtrl', ['$scope', '$stateParams', // The following is the constructor function for this page's controller. See https://docs.angularjs.org/guide/controller
// You can include any angular dependencies as parameters for this function
// TIP: Access Route Parameters for your page via $stateParams.parameterName
function ($scope, $stateParams) {


}])
 