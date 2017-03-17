import socket from './socket';

(function() {
  let id = $('#id').data('id');
  if (!id) {
    return;
  }
  let channel = socket.channel("event:" + id, {});

  channel.on("update_quantity", event => {
    console.log("update: ", event);
    $('h4 span').text(event.quantity);
  });

  channel.join()
         .receive("ok", resp => { console.log("joined: ",  resp); })
         .receive("error", resp => { console.log("error: ", resp); });
})();
