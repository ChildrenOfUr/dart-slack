import 'package:slack/html/slack_html.dart';


main()
{
	// the slack url needs to be your Webhook url
	url = 'webhook-url';

	// The various variables within the Message object correspond to what's described in the api.
	// This information is stored at 'https://api.slack.com/docs/messages'
	String username = 'Professor Botz';
	String text = 'I am Professor Botz!';
	Message m = new Message(text, username:username);

	send(m);
	print(m);
}