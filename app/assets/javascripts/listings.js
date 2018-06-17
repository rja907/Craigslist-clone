
$(document).ready(function(){
  var getSubcategories = function(category_id){
    var $subcategories = $('#listing_subcategory_id');
    $($subcategories).empty();

    $.post('/subcategories/find_by_category', { category_id: category_id }, function(data){
      $.each(data.subcategories, function(index, subcategory){
        var option = $('<option />');
        option.attr('value', subcategory.id);
        option.text(subcategory.name);
        option.appendTo($subcategories);
      });
    })
  };

  var getSelectedCategory = function(){
    return $('#listing_category_id').val();
  };

  $('#listing_category_id').change(function(){
    var category_id = getSelectedCategory();
    getSubcategories(category_id);
  });

  getSubcategories(getSelectedCategory());
});
