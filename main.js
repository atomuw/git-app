$(function() {
  // hideボタンを押したとき
  $("#hideButton").on("click", function() {
    $("#title").hide();
  });
   // showボタンを押したとき
  $("#showButton").on("click", function() {
    $("#title").show();
  });
});
  //appendボタンを押した時
  $("#appendButton").on("click", function() {
    $("#lists").append('<li class = "list">追加されたリスト</li>');
  });

  // removeボタンを押した時
  $("removeButton").on("click", function() {
    $(".list").remove();
  });
});

$ ("#title").on("mouseover", function){
  $("#title").addclass("red");
}).on("mouseout", function(){
  $("#title").removeclass("red")
}
}

$(function() {
（中略）
  // valボタンを押したとき
  $("#valButton").on("click", function() {
    console.log($("input").val());
  });
});
」















































