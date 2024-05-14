<p align="center">
<picture>
<img width="160" height="160"  alt="XPanel" src="https://github.com/iPmartNetwork/iPmart-SSH/blob/main/images/logo.png">
</picture>
  </p> 
<p align="center">
<h1 align="center"/>squid proxy</h1>
<h6 align="center">squid proxy installer<h6>
</p>



# Squid Proxy Installer



Auto install Squid 3 proxy on following linux OS.

* Ubuntu 14.04, 16.04, 18.04, 20.04
* Debian 8, 9, 10
* CentOS 7, 8


## Install Squid

To install, run the script

```
wget https://raw.githubusercontent.com/ipmartnetwork/squid-proxy/main/squid3-install.sh
sudo bash squid3-install.sh
```



# Create Users

To create users, run

```
squid-add-user
```

OR run following commands

```
sudo /usr/bin/htpasswd -b -c /etc/squid/passwd USERNAME_HERE PASSWORD_HERE
```

To update password for am existing user, run

```
sudo /usr/bin/htpasswd /etc/squid/passwd USERNAME_HERE
```

replace USERNAME_HERE and PASSWORD_HERE with your desired user name and password.

Reload squid proxy

```
sudo systemctl reload squid
```

# Configure Multiple IP Address

NOTE: This is only needed if you have more than one IP on your server.

Before you can configure squid to use muliple IP address, you need to add IP to your server and you should be able to connect to server using these IPs.

Once IP added to your server, you can configure it to use with squid proxy by running following command

```
wget https://raw.githubusercontent.com/ipmartnetwork/squid-proxy/main/squid-conf-ip.sh
sudo bash squid-conf-ip.sh
```




# تلگرام

[@ipmart_network](https://t.me/ipmart_network)

[@iPmart Group](https://t.me/ipmartnetwork_gp)




 # حمایت از ما :hearts:
حمایت های شما برای ما دلگرمی بزرگی است<br> 
<p align="left">
<a href="https://plisio.net/donate/kB7QU7f7" target="_blank"><img src="https://plisio.net/img/donate/donate_light_icons_mono.png" alt="Donate Crypto on Plisio" width="240" height="80" /></a><br>
	
|                    TRX                   |                       BNB                         |                    Litecoin                       |
| ---------------------------------------- |:-------------------------------------------------:| -------------------------------------------------:|
| ```TJbTYV1fFo2485sYMyajxGPLFzxmNmPrNA``` |  ```0x4af3de9b303a8d43105e284823d95b4c600961a3``` | ```MPrkzFiNtw4Rg67bbZB6gCxa9LV87orABM``` |	

</p>	




<p align="center">
<picture>
<img width="160" height="160"  alt="XPanel" src="https://github.com/iPmartNetwork/iPmart-SSH/blob/main/images/logo.png">
</picture>
  </p> 

  
  


