// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"

import jquery from 'jquery'
window.jQuery = jquery
window.$ = jquery

$(document).on('click', '.add-to-cart', function(){

  product_id = $(this).data('product-id')
  $.ajax({
    headers: {
      'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
    },
    url : 'cart_items',
    type : 'POST',
    data : { product_id : product_id },
    success : function(response) {
    },
    error : function(request,error)
    {
        alert("Request: "+JSON.stringify(request));
    }
  });
});