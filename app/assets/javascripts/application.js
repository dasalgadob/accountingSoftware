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
//= require bootstrap-sprockets
//= require jquery-ui/widgets/autocomplete
//= require autocomplete-rails


//code to enable input fields to modifiy in a list

function activateSaveButton(edit) {
    //console.log("entro");
    //console.log("jquery"+$(edit).id);  undefined
    //console.log("js"+edit.id);  right answer
    var id= edit.id;
    $('#guardar'+edit.id).css('display','inline');
    //enable input fields
    $('#number'+id).prop("disabled", false);
    $('#name'+id).prop("disabled", false);
}

function addClassByClick(button){
    $('.ui-widget-content').addClass("dropdown-menu")
}


$(document).ready(function(){
    console.log("test");
    $('.pagination .previous_page').text('«');
    $('.pagination .next_page').text('»');

    $('.pagination').each(function () {
        var $bar = $(this);
        $bar.find('a, .current, span').wrapAll('<ul class="pagination">');
        $bar.find('a, .current, span').wrap('<li>');
    
        $bar.find('em').each(function () {
          $(this).parent().addClass('disabled');
          $(this).replaceWith('<a href="#">' + $(this).text() + '</a>');
        });
    });
});
//= require_tree .
