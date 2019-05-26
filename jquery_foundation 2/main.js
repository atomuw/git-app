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
  $("#fadeOutButton").on("click", function() {
    $("#title").fadeOut(1000);
  });

  // fade inボタンを押したとき
  $("#fadeInButton").on("click", function() {
    $("#title").fadeIn(3000);
  });
});

$("#appendButton").on("click", function() {
    $("#lists").append('<li class="list">追加されたリスト</li>');
  });

  // removeボタンを押したとき
  $("#removeButton").on("click", function() {
    $(".list").remove();
  
    $("#addClassButton").on("click", function() {
        $("p").addClass("red");
      });
    
      // remove classボタンを押したとき
      $("#removeClassButton").on("click", function() {
        $("p").removeClass("red");
      });
    });

    $("#getAttrButton").on("click", function() {
        console.log($("img").attr("src"));
      });
    
      $("#changeAttrButton").on("click", function() {
        $("img").attr("src", "http://yoso-walk.net/wp-content/uploads/2014/07/enhanced-buzz-wide-6868-1401738537-9_R.jpg");
      });
    
      $("#valButton").on("click", function() {
        console.log($("input").val());
      });