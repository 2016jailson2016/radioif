angular.module('app.routes', [])

.config(function($stateProvider, $urlRouterProvider) {

  // Ionic uses AngularUI Router which uses the concept of states
  // Learn more here: https://github.com/angular-ui/ui-router
  // Set up the various states which the app can be in.
  // Each state's controller can be found in controllers.js
  $stateProvider
    
  

      .state('rDioIFRN', {
    url: '/tela_inicial',
    templateUrl: 'templates/rDioIFRN.html',
    controller: 'rDioIFRNCtrl'
  })

  .state('login', {
    url: '/login',
    templateUrl: 'templates/login.html',
    controller: 'loginCtrl'
  })

  .state('menu', {
    url: '/menu',
    templateUrl: 'templates/menu.html',
    controller: 'menuCtrl'
  })

  .state('administrador', {
    url: '/page5',
    templateUrl: 'templates/administrador.html',
    controller: 'administradorCtrl'
  })

  .state('cadastrar', {
    url: '/cadastrar',
    templateUrl: 'templates/cadastrar.html',
    controller: 'cadastrarCtrl'
  })

  .state('playlist', {
    url: '/playlist',
    templateUrl: 'templates/playlist.html',
    controller: 'playlistCtrl'
  })

  .state('top10', {
    url: '/top_10',
    templateUrl: 'templates/top10.html',
    controller: 'top10Ctrl'
  })

  .state('mural', {
    url: '/mural',
    templateUrl: 'templates/mural.html',
    controller: 'muralCtrl'
  })

  .state('notCias', {
    url: '/noticias',
    templateUrl: 'templates/notCias.html',
    controller: 'notCiasCtrl'
  })

  .state('sugestEs', {
    url: '/sugestoes',
    templateUrl: 'templates/sugestEs.html',
    controller: 'sugestEsCtrl'
  })

  .state('procurarMSica', {
    url: '/procurar_musica',
    templateUrl: 'templates/procurarMSica.html',
    controller: 'procurarMSicaCtrl'
  })

  .state('recuperarSenha', {
    url: '/senha',
    templateUrl: 'templates/recuperarSenha.html',
    controller: 'recuperarSenhaCtrl'
  })

  .state('contato', {
    url: '/credito',
    templateUrl: 'templates/contato.html',
    controller: 'contatoCtrl'
  })

$urlRouterProvider.otherwise('/tela_inicial')

  

});