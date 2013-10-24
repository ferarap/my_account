function create_movement(){
  if($("#movement_date").val()!=""){
    var request = $.ajax({
      url: "movements/",
      type: "POST",
      dataType: 'json',
      data:{
        "movement":{
        "date": $("#movement_date").val(),
        "subject": $("#movement_subject").val(),
        "amount": $("#movement_amount").val(),
        "type_movement": $("#movement_type_movement").val()},            
        success: function() {
          // $('#link_unfollow_'+element.toString()).text(loading_message);
        }
      }
    }).done(function(data){
      if (data != "false"){
        console.log("return create " + data);
        var request2 = $.ajax({
          url: "movements/" + data.id,
          type: "GET",
          dataType: 'script',
          data:{ }
        });

        $("#movement_date").val("");
        $("#movement_subject").val("");
        $("#movement_amount").val("");
        $("#movement_type_movement").val("");
      }
      else{
        alert('UNSUCCESS');
      }
    });
  }
}