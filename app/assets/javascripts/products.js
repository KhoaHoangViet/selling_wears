$(document).on("turbolinks:load",function(){
var quantitiy=0;
  $(".quantity-right-plus").click(function(e){
    e.preventDefault();
    var quantity = parseInt($("#product_quantity").val());
      $("#product_quantity").val(quantity + 1);
  });

  $(".quantity-left-minus").click(function(e){
    e.preventDefault();
    var quantity = parseInt($("#product_quantity").val());
    if(quantity>0){
      $("#product_quantity").val(quantity - 1);
    }
  });
});
