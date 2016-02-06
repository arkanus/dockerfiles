# Hubot with slack integration

Super-Small Hubot image for great justice!

## What is Hubot?

> Hubot is your company's robot. Install him in your company to dramatically 
> improve and reduce employee efficiency

## TL;DR

```
docker run -e HUBOT_SLACK_TOKEN=<some token> arkanus/hubot
```

## ENVVARS

In order to configure some things, you can set some envvars (with `docker -e`)
If you use other scripts, you must check the documentation for the additional
asssociated envvars.

|name                 |default    |description                                            |
|-------              |-----------|---------------                                        |
|*HUBOT\_SLACK\_TOKEN*|<empty>    |Token to connect to slack (Mandatory if using defaults)|
|*HUBOT\_ADAPTER*     |slack      |Adapter to use                                         |
|*HUBOT\_NAME*        |hubot      |Name of the bot                                        |
