This script lets you easily send messages to Slack from the command line or another command line application. The message to post can be provided as a command line argument or you can just pipe the message directly to it.

Examples:

 * `slackpipe -m "hello world"`
 * `echo "hello world" | slackpipe`

To use this script you (or someone on your team) must first set up an "Incoming WebHook" on Slack and get the custom URL they provide. You can do this here: https://wondermile.slack.com/apps/A0F7XDUAZ-incoming-webhooks

You should then set a `SLACKPIPE_URL` environment variable to that URL.
* `export SLACKPIPE_URL=https://hooks.slack.com/services/012345678/012345678/ABCDEFGHIJKLMNOPQRSTUVWX`

If you prefer you can instead pass the URL as a command line option like this:

* `slackpipe -m "hello world" -u https://hooks.slack.com/services/012345678/012345678/ABCDEFGHIJKLMNOPQRSTUVWX` 
