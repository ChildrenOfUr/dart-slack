dart-slack
==========

Dartlang interface to the Slack Webhook API

Documentation available on [Pub](https://pub.dartlang.org/packages/slack)

## Simple Start

    import 'package:slack/html/slack';
    // or 
    import 'package:slack/io/slack';
    
    main() {
      Slack slack = new Slack('webhook-url');
      Message message = new Message('foo message',username:'bar-user');      
      slack.send(message);
    }

## Attachment Support

Minimally attachments require a 'fallback' [String], in the first field.

    Attachment bugReport = new Attachment("I can't use Slack!",
       pretext: 'A Critical Bug Reported',
       text   : "I can't use Slack!",
       color  : 'danger');

    Message message = new Message('Bug Report:', username: 'bugBot', attachments: [bugReport]);
    slack.send(message);
