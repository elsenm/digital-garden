# SOCKS Proxy
OpenSSH can be used as a [SOCKS](https://en.wikipedia.org/wiki/SOCKS) proxy. Both the **SOCKS4** and **SOCKS5** protocols are supported, and the `ssh` client will act as the SOCKS server. The `ssh` client will send the traffic via the SOCKS protocol over a secure SSH tunnel to an `sshd` daemon. The daemon in turn will forward the traffic to its original destination. No special configuration of the `sshd` daemon is required for this to work. The basic authentication that was introduced with SOCKS5 is not supported.

To start the SOCKS server on your `localhost` run the following command in your terminal after replacing the placeholders:

```shell
ssh -ND BINDING_ADDRESS:PORT USER@TARGET_HOST
```

??? info "Explanation"
    `-N`
    :   Do not execute a remote command. This is useful for just forwarding ports.
    
    `-D BINDING_ADDRESS:PORT`
    :   Opens the SOCKS proxy on the local address `BINDING_ADDRESS` on port `PORT`. This will tell `ssh` to act as secure tunnel to `TARGET_HOST` and use `USER` to authenticate.

The aforementioned command will start the SOCKS proxy server on the given port on the local machine. To connect to it, simply configure the proxy settings of your client (web browser or other application) to connect to `BINDING_ADDRESS:PORT` via either SOCKS4 or SOCKS5.

??? example
    The following line will open a SOCKS proxy server on `localhost` on port `1080` that will send all traffic via the SOCKS protocol using a secure SSH tunnel to the target host `marvin-elsen.com` where a `sshd` daemon is running, which in turn will forward the traffic to its original destination. To authenticate with the `sshd` daemon the user `marvin` is used.
    ```shell
    ssh -ND localhost:1080 marvin@marvin-elsen.com
    ```

## Sources
* [Create a SOCKS proxy on a Linux server with SSH to bypass content filters ](https://ma.ttias.be/socks-proxy-linux-ssh-bypass-content-filters/)
* [OpenSSH manual page](https://man.openbsd.org/ssh)
