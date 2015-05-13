$(document).ready(function () {

    $('#form3').validate({ // initialize the plugin
        rules: {
            input3_1: {
                required: true,
                range: [40, 130]
            }
        }
        messages: {
          input3_1: "Please input a number a weight between 40 and 130 Kg."
        }
    });

});
