$(document).ready(function(){
  var numQ = $("#nqOFc").val();
  function spiner(add,sub,idinput) {
    $(add).click(function add() {
      var $rooms = $(idinput);
      var a = $rooms.val();
      if (a < numQ) {
      a++;
      $(sub).prop("disabled", !a);
      $rooms.val(a);
      }
      else {
        $(add).prop("disabled", true);
      }
    });

    $(sub).prop("disabled", !$(idinput).val());
    $(sub).click(function subst() {
      var $rooms = $(idinput);
      var b = $rooms.val();
      if (b >= 2) {
        b--;
        $rooms.val(b);
      }
      else {
        $(sub).prop("disabled", true);
      }
    });
  };
  spiner('#adds','#subs','#numOFques')
});
