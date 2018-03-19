$(document).ready(function(){
  $("#btn_genre_filter").click(function(){
    get_users();
  })

  $(".form-check-input").change(function(){
    get_users();
  });

  var get_selected_genres = function(){
    var genreIds = [];
    $(".form-check-input").each(function(){
      if($(this).prop('checked')){
        genreIds.push($(this).val())
      }
    });
    return genreIds
  }

  var get_users = function(){
    $.ajax({
      type: "GET",
      url: "/users/filter",
      dataType: 'script',
      data: {genres: get_selected_genres}
    });
  }
})
