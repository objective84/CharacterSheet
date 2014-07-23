/**
 * Created by Peter's Desktop on 7/22/2014.
 */
$(document).ready(function () {
    require(['jquery', 'Router'],
        function ($, Router) {
            console.log(1);
            new Router();
        }
    );
});

function submit(id){
    console.log(1);
    $('#id').val(id);
    $('#characterForm').submit();
}
