# SOCKS Proxy
OpenSSH can be used as a [SOCKS](https://en.wikipedia.org/wiki/SOCKS) proxy. Both the **SOCKS4** and **SOCKS5** protocols are supported, and the `ssh` client will act as the SOCKS server. No special configuration of the `sshd` daemon is required for this to work. The basic authentication that was introduced with SOCKS5 is not supported.

To start the SOCKS server on your `localhost` run the following command in your terminal after replacing the placeholders:

```shell
ssh -D PORT -N USER@TARGET_HOST
```

??? info "Explanation"
    1. `-D PORT`: opens the SOCKS proxy on the local port `PORT`. This will tell `ssh` to act as secure tunnel to `TARGET_HOST` and use `USER` to authenticate.
    2. `-N`: do not execute a remote command. This is useful for just forwarding ports.

??? example
    The following line will open a SOCKS proxy server on `localhost` on port `1080` that will send all traffic via a secure SSH tunnel to the target host `marvin-elsen.com` where a `sshd` daemon is running, which in turn will forward the traffic to the original destination. To authenticate with the `sshd` daemon the user `marvin` is used.
    ```shell
    ssh -D 1080 -N marvin@marvin-elsen.com
    ```

## Sources
* [Create a SOCKS proxy on a Linux server with SSH to bypass content filters ](https://ma.ttias.be/socks-proxy-linux-ssh-bypass-content-filters/)
* [OpenSSH manual page](https://man.openbsd.org/ssh)
