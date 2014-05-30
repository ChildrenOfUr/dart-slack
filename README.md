dart-slack
==========

Dartlang interface to the Slack Webhook API



    import 'package:slack/slack_html' as slack;
    // or 
    import 'package:slack/slack_io' as slack;
    
    main() {
      slack.Message message = new slack.Message()
        ..username = 'Foo-Bot'
        ..text = 'bar-text';
      
      slack.token = 'my-token';
      slack.team = 'team'
      
      slack.send(message);
    }
