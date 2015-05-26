library slack_html;

import 'dart:html';
import '../src/slacksrc.dart';
export '../src/slacksrc.dart';


/**
 *  Posts a Slack message to the properly authenticated Slack token.
 *  The messages will go to whatever channel the token was set up for.
 */
send(Message m) {
  String outurl = url;
  String payload = m.toString();  
  HttpRequest.postFormData(outurl,{'payload' : payload});
}