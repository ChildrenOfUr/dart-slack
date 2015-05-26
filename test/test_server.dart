import 'package:slack/io/slack.dart';


main() async {
  SlackServer server = new SlackServer();
  await server.ready;
  print('ready');
}