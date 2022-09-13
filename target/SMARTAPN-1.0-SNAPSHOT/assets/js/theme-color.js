/**
 *  Document   : theme-color.js
 *  Author     : redstar
 *  Description: Core script to handle the entire theme and core functions
 *
 **/

jQuery(document).ready(function() {
   jQuery(document).on("click",".sidebar-theme a",function() {
	   var sidebar_color = jQuery(this).attr('data-theme')+"-sidebar-color";
	   jQuery( "body" ).removeClass( "white-sidebar-color dark-sidebar-color blue-sidebar-color indigo-sidebar-color green-sidebar-color red-sidebar-color cyan-sidebar-color" );
	   jQuery( "body" ).addClass( sidebar_color );
   });
   jQuery(document).on("click",".logo-theme a",function() {
	   var logo_color = jQuery(this).attr('data-theme');
	   jQuery( "body" ).removeClass( "logo-white logo-dark logo-blue logo-indigo logo-red logo-cyan logo-green" );
	   jQuery( "body" ).addClass( logo_color );
   });
   jQuery(document).on("click",".header-theme a",function() {
	   var header_color = jQuery(this).attr('data-theme');
	   jQuery( "body" ).removeClass( "header-white header-dark header-blue header-indigo header-red header-cyan header-green" );
	   jQuery( "body" ).addClass( header_color );
   });
});

              function swapStyleDark()
            {
                var x = document.getElementById('switcher3').checked;
               
                if(x==true)
                {
                document.getElementById('theme-colorCss').href="assets/css/theme/light/theme-color_dark.css";
                document.getElementById('theme_styleCss').href="assets/css/theme/light/theme_style_dark.css";
                
                document.getElementById('bodyId').className="page-header-fixed sidemenu-closed-hidelogo page-content-white page-md header-dark dark-sidebar-color logo-dark dark-theme";
                
                
            }
            
            else
            {
                document.getElementById('theme-colorCss').href="assets/css/theme/light/theme-color.css";
                document.getElementById('theme_styleCss').href="assets/css/theme/light/theme_style.css";
                
                document.getElementById('bodyId').className="page-header-fixed sidemenu-closed-hidelogo page-content-white page-md header-white white-sidebar-color logo-indigo";
              
            }
                
                
               
               
            }
