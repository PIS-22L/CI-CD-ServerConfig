# Server configuration instructions for CI/CD webhooks

In order to make CI/CD webhooks work with firewall on it is necessary to create tunnell with proxy server that redirects webhooks directly to the server.

In order to achieve that, <a href="https://github.com/probot/smee.io">smee</a> has been used. However, in order to work smee requires client running continuously on the server side.

<br>

## How to run smee_client on server

Download <a href="https://github.com/probot/smee-client">smee_client</a>. You can try it running before proceeding.

Open smee.service and configure following arguments:
- url: URL of your smee webhook (the same you use in Jenkins or whatever service)
- port: port used by the service webhook is meant for
<img src="./images/screenshot.jpeg">

Unfortunately smee client does not work as a backend service. For the convinience (no necessity to keep ssh terminal with smee client running) it is recommended to create systemctl service to run in background. Download and run:
    
- `sudo chmod +x set_smee_service.sh`

- `sudo ./set_smee_service.sh`

<br>

### Stopping and disabling service

- `sudo chmod +x remove_smee_service.sh`

- `sudo ./remove_smee_service.sh`

<br>

## Links:
https://www.howtogeek.com/687970/how-to-run-a-linux-program-at-startup-with-systemd/

https://github.com/probot/smee-client

https://www.jenkins.io/blog/2019/01/07/webhook-firewalls/
