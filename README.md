dart-slack
==========

Dartlang interface to the Slack Webhook API



    import 'package:slack/slack_html' as slack;
    // or 
    import 'package:slack/slack_io' as slack;
    
    main() {
      Slack slack = new Slack('webhook-url);
      slack.Message message = new slack.Message('foo message',username:'bar-user');      
      slack.send(message);
    }
