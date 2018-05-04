Slackpipe allows you to easily post messages to Slack from the command line. You might for example use this to post results of a nightly script to a Slack channel.

You can provide the message as a command line argument or you can just pipe the output of another program to it.

Examples

 * `slackpipe -m "hello world"`
 * `echo "hello world" | slackpipe`

To use this script someone on your team must first set up an "Incoming WebHook" on Slack and get the custom URL they provide. You can do this here: https://wondermile.slack.com/apps/A0F7XDUAZ-incoming-webhooks

You should then set the `SLACKPIPE_URL` environment variable to the URL that Slack provides.
* `export SLACKPIPE_URL=https://hooks.slack.com/services/ABCDEFGHIJKLMNOPQRSTUVWX`

Alternatively you can just pass the URL as a command line option like this:
* `slackpipe -m "hello world" -u https://hooks.slack.com/services/ABCDEFGHIJKLMNOPQRSTUVWX`

All supported environment variables and command line arguments:
* `SLACKPIPE_URL` or `-u` - Your Slack Incoming WebHook URL (provided by Slack)
* `SLACKPIPE_CHANNEL` or `-c`  - The channel to post your message to (e.g. `#lobby` or `@bob`)
* `SLACKPIPE_USERNAME` or `f`  - The username that the message should come from (e.g. `bob`)
* `SLACKPIPE_ICON` or `-i` - The icon emoji to use for the message icon (e.g. `:ghost:`)
