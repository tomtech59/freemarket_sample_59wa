$(function() {
  const form = $("#charge_form");
  Payjp.setPublicKey('pk_live_b6d39b3b77417b5d56ca2ef6');
  form.on('submit', (e) => {
    e.preventDefault();
    const card = {
      number: parseInt($("#payment_card_number").val()),
      cvc: parseInt($("#cvv_code").val()),
      exp_month: parseInt($("#exp_month").val()),
      exp_year: parseInt($("#exp_year").val())
    };
    Payjp.createToken(card, (status, response) => {
      if (status === 200) {
        $("#payment_card_number").removeAttr("name");
        $("#cvv_code").removeAttr("name");
        $("#exp_month").removeAttr("name");
        $("#exp_year").removeAttr("name");

        const token = response.id;
        form.append($('<input type="hidden" name="payjp_token" />').val(token));
        form.get(0).submit();
      }
      else {
        alert("error")
      }
    })
  })
})
