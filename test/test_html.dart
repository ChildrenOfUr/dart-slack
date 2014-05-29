import 'package:slack/slack_html.dart';


main() {
 token = 'oaV4CYX5OLlfwO3gciyhBxB8';
 team = 'cou';
  
  Message m = new Message()
    ..username = 'Street Spirit'
    ..text = 'I am a spirit!'
    ..icon_url = 'http://childrenofur.com/assets/street_spirit.png';
  
  
  send(m);
  print(m);
}