$(document).ready(function(){

       $("a.learnmore").live("click", function() {
            var h = this.hash
            if (h == ""){
                   h = "#ForX";
            }
            var pos = $(h).offset().top;
            $('html, body').animate({scrollTop:pos}, 'slow',function(){
                           window.location.hash = h;
            });
            return false;
        });
});
