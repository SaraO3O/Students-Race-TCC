var getaudio = $('#player')[0];

$(document).on('click touchend', '#audio', function() {
         getaudio.load();
         getaudio.play();
});
       



