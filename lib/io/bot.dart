library slack.io.bot;

import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Bot {
  String token;
  WebSocket webSocket;

  Function whenCalled;

  Bot(final this.token);

  Future connect() async {
    http.Response auth = await http.post('https://slack.com/api/rtm.start', body: {'token': token});
    String url = JSON.decode(auth.body)['url'];
    webSocket = await WebSocket.connect(url);

    webSocket.listen((e) => _process(JSON.decode(e)));
  }

  chat(String message, String channel) {
    Map chatEvent = {
      "id": 1,
      "type": "message",
      "channel": channel,
      "text": message
    };
    webSocket.add(JSON.encode(chatEvent));
  }

  _process(Map data) {
    if (data['type'] == 'message') {
      if(data['text'].startsWith('antony')) {
        whenCalled(data);
      }
    }
  }
}