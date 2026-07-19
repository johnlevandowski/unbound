Unbound container for docker and podman
=======================================

## Use the sample compose.yaml to run the container

~~~
docker compose up -d
~~~

~~~
dig -p 5335 @127.0.0.1 johnlevandowski.com
~~~


## Testing dnssec

~~~
dig -p 5335 @127.0.0.1 dnssec.works
dig -p 5335 @127.0.0.1 sigok.verteiltesysteme.net
dig -p 5335 @127.0.0.1 sigok.ippacket.stream
~~~

~~~
dig -p 5335 @127.0.0.1 fail01.dnssec.works
dig -p 5335 @127.0.0.1 sigfail.verteiltesysteme.net
dig -p 5335 @127.0.0.1 sigfail.ippacket.stream
~~~


## Other useful commands

~~~
docker exec -it unbound unbound-control stats_noreset
~~~

~~~
docker logs unbound
~~~

Override the unbound.conf by modifying override.conf file in etc-unbound directory in your project and uncomment the appropriate section from the compose.yaml
