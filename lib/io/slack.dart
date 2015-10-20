library slack.io;

import 'package:http/http.dart' as http;
import '../src/slacksrc.dart';
export '../src/slacksrc.dart';

class Slack {
  String url;
  Slack(final this.url);

  /// Posts a Slack message to the properly authenticated Slack token.
  /// The messages will go to whatever channel the token was set up for.
  send(Message m) {
    String payload = m.toString();
    http.post(url, body: {'payload': payload});
  }
}

