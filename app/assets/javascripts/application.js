// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree
//= require turbolinks
//= require chartkick
//= require Chart.bundle
/**
 * アコーディオン
 *
 * @auther ao-system
 */
(function(window,document){
  var _toggleMenuButton = document.getElementById('toggleMenuButton');
  var _toggleMenu = document.getElementById('toggleMenu');
  var _clientH;
   init();
    function init() {
      _toggleMenu.style.height = 'auto';
      _clientH = _toggleMenu.clientHeight;
      _toggleMenu.style.height = '0px';
      _toggleMenuButton.addEventListener('click',function(){clickToggle();},false);
  }
   function clickToggle() {
      var lastH = _toggleMenu.style.height;
      _toggleMenu.style.height = (lastH == '' || lastH == '0px') ? _clientH + 'px' : '0px';
  }
})(window,document);