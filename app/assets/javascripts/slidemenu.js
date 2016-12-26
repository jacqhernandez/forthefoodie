var hamburgerMenu = document.getElementById( 'cbp-spmenu-hamburger' ),
    showHamburgerMenu = document.getElementById( 'showHamburgerMenu' ),
    hideHamburgerMenu = document.getElementById('cbp-spmenu-hamburger-close'),
    body = document.body;
showHamburgerMenu.onclick = function() {
  classie.toggle( body, 'cbp-spmenu-push-toright' );
  classie.toggle( hamburgerMenu, 'cbp-spmenu-open' );
};
hideHamburgerMenu.onclick = function(){
  classie.toggle( body, 'cbp-spmenu-push-toright' ); //hide/show megaphone
  classie.toggle( hamburgerMenu, 'cbp-spmenu-open' ); //hide/show left panel
};
