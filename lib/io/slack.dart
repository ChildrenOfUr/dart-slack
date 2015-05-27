library slack_io;
import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../src/slacksrc.dart';
export '../src/slacksrc.dart';


/**
 *  Posts a Slack message to the properly authenticated Slack token.
 *  The messages will go to whatever channel the token was set up for.
 */
send(Message m) {
  String outurl = url;
  String payload = m.toString();  
  http.post(outurl, body: {'payload' : payload});
}


// DEV


class SlackServer {
  Future ready;
  StringBuffer stringBuffer = new StringBuffer();
  int port;
  SlackServer(this.port) {
    var server = await HttpServer.bind(InternetAddress.ANY_IP_V4, port);
    print('Server running on ${InternetAddress.ANY_IP_V4}:$port');

    server
      ..listen((HttpRequest request) async {
      request.response
        ..headers.contentType = new ContentType('text', 'plain', charset: 'utf-8')
        ..write('{text: "Hey handsome"}')
        ..close();
      })
      ..catchError((err) => print('Error $err'));
  }
}