library slack.html;

import 'dart:html';
import '../src/slacksrc.dart';
export '../src/slacksrc.dart';

class Slack {
  String url;
  Slack(final this.url);

  /// Posts a Slack message to the properly authenticated Slack token.
  /// The messages will go to whatever channel the token was set up for.
  send(Message m) {
    String payload = m.toString();
    HttpRequest.postFormData(url, {'payload': payload});
  }
}
