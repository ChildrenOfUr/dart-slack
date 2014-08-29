import 'package:slack/slack_io.dart';

main()
{
	token = 'your_token';

	// The 'team' variable is the first part of your team's slack url,
	team = 'your_team';

	// The various variables within the Message object correspond to what's described in the api.
	// This information is stored at 'https://api.slack.com/docs/messages'
	String username = 'Professor Botz';
	String text = 'I am Professor Botz!';
	Message m = new Message(text, username:username);

	send(m);
	print(m);
}