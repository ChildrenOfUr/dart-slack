
import 'package:slack/slack_io.dart';

main() {
 token = 'your_token';
 
 // The 'team' variable is the first part of your team's slack url,
 team = 'your_team';
  
 // The various variables within the Message object correspond to what's described in the api.
 // This information is stored at 'https://api.slack.com/docs/messages' 
  Message m = new Message()
    ..username = 'Professor Botz'
    ..text = 'I am Professor Botz!';;
  
  send(m);
  print(m);
}