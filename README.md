Slackpipe allows you to easily post messages to Slack from the command line. You might for example use this to post the results of a nightly script to a Slack channel. 

You can provide the message to post as a command line argument or you can just pipe the output of another program to it.

## Installation
    $ gem install slackpipe

## Example Usage
    $ slackpipe -m "hello world"
    $ echo "hello world" | slackpipe
    $ slackpipe -m "hello world" -c "#general" -f "my robot" -i ":ghost:" -u https://hooks.slack.com/services/ABCDEFGHIJKLMNOPQRSTUVWX`
    
## Configuration
  * You should first [Add an Incoming WebHook Configuration](https://wondermile.slack.com/apps/A0F7XDUAZ-incoming-webhooks) on Slack's website and get the `Webhook URL` they provide for it.  
  * Next set the `SLACKPIPE_URL` environment variable to the `Webhook URL` that Slack assigns you.
    * `export SLACKPIPE_URL=https://hooks.slack.com/services/ABCDEFGHIJKLMNOPQRSTUVWX`
  * If you prefer not using an environment variable you can also provide the URL as a command line option using `--url` or `-u`
  
## Environment variables and command line options
   * `SLACKPIPE_URL` or `--url` or `-u` - (Required) Your Slack Incoming `WebHook URL` (provided by Slack)
   * `SLACKPIPE_CHANNEL` or `--channel` or `-c` - (Optional) The channel to post your message to (e.g. `#general` or `@jane`)
   * `SLACKPIPE_USERNAME` or `--from` or `-f`  - (Optional) The username that the message should come from (e.g. `my robot`)
   * `SLACKPIPE_ICON` or `--icon` or `-i` - (Optional) The icon emoji to use for the message icon (e.g. `:ghost:`)
   
