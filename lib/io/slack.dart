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

int port = 9876;
class SlackServer {
  Future ready;

  SlackServer() {
    Completer completer = new Completer();
    ready = completer.future;
    HttpServer.bind(InternetAddress.ANY_IP_V4, port).then((server) {
      print('Server running on ${InternetAddress.LOOPBACK_IP_V4}:$port');
      completer.complete();
      server.listen((HttpRequest request) async {
        if (request.method == 'POST');
        List lines = await request.toList();
        for (List line in lines)
        react(new String.fromCharCodes(line));
      });
    })
    .catchError((err) => print('Error $err'));
  }

  react(data) {
    print('data: ' + data + '\n');
  }
}