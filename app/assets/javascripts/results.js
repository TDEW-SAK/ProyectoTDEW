$(document).ready(function(){
        $('.slider').slider('disable');
});


/*$(document).ready(function(){
    
    var offset, 
        $slider = null, 
        dims = {
            top: null, 
            left: null
        };

    $(".slider-label").each(function() {
        var $this = $(this); 

        $slider = $this.prevAll("div.ui-slider[role='application']");
        
        // If we're looking at the low label, get slider position info
        if ( $this.hasClass("left") ) {
            offset = $slider.offset();

            dims.top = offset.top + $slider.outerHeight();
            dims.left = offset.left - 20;
        }
        
        if ( $this.hasClass("right") ) {
            dims.left += $slider.innerWidth();
        }
        
        $this.css( dims );       
    });

    $('.slider').slider('disable');
});​*/