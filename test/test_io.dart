import 'package:slack/slack_io.dart';

main() {
  // The token generated when you set up a new 'incoming webhook' with slack.
  token = 'your_token';
  
  // The 'team' variable is the first part of your team's slack url,
  // for example 'cou' would be the team name for 'cou.slack.com/'
  team = 'your_team';
   
  // The various variables within the Message object correspond to what's described in the api.
  // This information is stored at 'https://api.slack.com/docs/messages' 
   Message m = new Message()
     ..username = 'Street Spirit'
     ..text = 'I am a spirit!'
     ..icon_url = 'http://childrenofur.com/assets/street_spirit.png';
   
   send(m);
   print(m);
}