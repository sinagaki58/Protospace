$(function(){
  $('.img_preview').each(function(){
    var selfInput = $(this).find('input[type=file]');
    selfInput.change(function(){
      var file = selfInput[0].files[0];
      $img = $(this).siblings('img')
      console.log(file);
      fileRdr = new FileReader();
      fileRdr.onload = function(event) {
        $img.attr('src', event.target.result);
      }
      fileRdr.readAsDataURL(file)
      $img.css('display', 'inline');
    });
  });
});