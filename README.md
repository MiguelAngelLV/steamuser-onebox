A simple Steam Profile Signature plugin for plugin

This plugins transform profile URL to Steam Signature using http://steamsignature.com/

Based in the Simple Steam Store Widget as a Discourse plugin of fearlessfrog
https://github.com/fearlessfrog/steamstorewidget-onebox



## Installation

As seen in a [how-to on meta.discourse.org](https://meta.discourse.org/t/advanced-troubleshooting-with-docker/15927#Example:%20Install%20a%20plugin), simply **add the plugin's repo url to your container's app.yml file**:

```yml
hooks:
  after_code:
    - exec:
        cd: $home/plugins
        cmd:
          - mkdir -p plugins
          - git clone https://github.com/discourse/docker_manager.git
          - git clone https://github.com/MiguelAngelLV/steamuser-onebox.git
```

You can select the language in plugins settings. You can see the available languages in http://steamsignature.com/

* Rebuild the container

```
cd /var/discourse
git pull
./launcher rebuild app
```
