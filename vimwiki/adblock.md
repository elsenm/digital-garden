# Hosts File

Use [one of these `hosts` files](https://github.com/StevenBlack/hosts) instead of using an adblock plugin since it's faster and covers all applications (not just a single web browser).

## Installation
1. [Download](https://github.com/StevenBlack/hosts) the respective `hosts` file you wish to use.
2. Change into the directory you have downloaded the file to and open a terminal in that directory.
3. Execute the command `sudo mv hosts /etc/hosts` to overwrite your current hosts file.

    !!! note
        Unless you have manually edited the file in the past you do not have to worry about overwriting it. The new downloaded `hosts` file contains all but one default entries. If you have any custom entries, make sure to create a backup of your current `hosts` file and to add the past entries to the new one.

4. Check your current hostname by executing the command `hostname`.
5. Execute the command `sudo vim /etc/hosts` and add the line `127.0.0.1 HOSTNAME` to where all the other `127.0.0.1` entries are. The placeholder `HOSTNAME` being the result of your command execution in step 4. If you do not do this some applications **might not work** as intented and the password check of `sudo` will be quite slow.

    !!! example
        The result of my `hostname` execution is `elsenm-desktop`, so I will add the following line to my `/etc/hosts` file:
        ```{hl_lines="5" linenums="1"}
        ...
        127.0.0.1 localhost
        127.0.0.1 localhost.localdomain
        127.0.0.1 local
        127.0.0.1 elsenm-desktop
        255.255.255.255 broadcasthost
        ::1 localhost
        ::1 ip6-localhost
        ::1 ip6-loopback
        ...
        ```
