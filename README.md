# Integrate your Helpy with Google Chat

This extension adds Google Chat notifications when new discussions are posted to your Helpy and adds a configuration panel in your Settings area.  You must have Helpy 0.9.2 updated master branch for this integration to work.

## Installation

Add this to your Gemfile:

```
gem 'helpy_google_chat', github: 'cdi-lab/helpy_google_chat', branch: 'master'
```

and then run:

```
bundle install
```

This gem gives you a couple options and all configuration happens inside of the Helpy admin through
a new settings panel.  You will have to configure your Google Chat room to support inbound webhooks and then
use the URL provided inside Helpy.  To do this, follow these steps:

1. Log into your Google Chat room. You probably already are logged in, but make sure you have owner priviledges.

2. In the upper left, click on your room name, and choose "Apps & Integrations"

3. In the upper right, chooe "Build", and then "Something just for my team"

4. On the build a custom integration page, choose "Incoming Webhooks"

5. Select the Channel, although you can always change this later, and click "Add Incoming Webhooks Integration"

6. Grab the Webhook URL shown and add that into your Helpy > Admin > Settings > Google Chat Configuration

7. Done!  You should immediately begin receiving notifications in your Google Chat room when a new discussion is added on your Helpy.
