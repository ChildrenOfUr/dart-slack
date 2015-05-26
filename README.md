dart-slack
==========

Dartlang interface to the Slack Webhook API



    import 'package:slack/slack_html' as slack;
    // or 
    import 'package:slack/slack_io' as slack;
    
    main() {
      slack.Message message = new slack.Message('foo message',username:'bar-user');
      
      slack.url = 'webhook-url';
      
      slack.send(message);
    }
