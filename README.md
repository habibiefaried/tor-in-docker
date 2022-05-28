# Description

This repo is to demonstrate on how to expose internal service to TOR network

# How to run

```
make
```

# Technical Reference

You should check this article to understand deeper how this works

* https://github.com/cathugger/mkp224o

# Demo Logs

Output log (without build)

```
$ docker ps
CONTAINER ID   IMAGE               COMMAND                  CREATED          STATUS          PORTS     NAMES
dd9505b8a7c4   tor-in-docker_tor   "/bin/sh -c 'cat /va…"   20 minutes ago   Up 20 minutes             tor-in-docker_tor_1
07e8c61c694c   nginx               "/docker-entrypoint.…"   27 minutes ago   Up 27 minutes   80/tcp    tor-in-docker_nginx_1
$ docker logs tor-in-docker_tor_1
pdnshs76a5djmxzb4c5chvzc5kpv6egk3htorh7u4okvcpdcdj5r5bqd.onion
May 28 04:36:23.134 [notice] Tor 0.4.7.7 running on Linux with Libevent 2.1.12-stable, OpenSSL 1.1.1o, Zlib 1.2.12, Liblzma 5.2.5, Libzstd 1.5.2 and Unknown N/A as libc.
May 28 04:36:23.134 [notice] Tor can't help you if you use it wrong! Learn how to be safe at https://support.torproject.org/faq/staying-anonymous/
May 28 04:36:23.134 [notice] Read configuration file "/etc/tor/torrc".
May 28 04:36:23.142 [notice] Opening Socks listener on 127.0.0.1:9050
May 28 04:36:23.142 [notice] Opened Socks listener connection (ready) on 127.0.0.1:9050
May 28 04:36:23.000 [notice] Parsing GEOIP IPv4 file /usr/share/tor/geoip.
May 28 04:36:23.000 [notice] Parsing GEOIP IPv6 file /usr/share/tor/geoip6.
May 28 04:36:23.000 [warn] You are running Tor as root. You don't need to, and you probably shouldn't.
May 28 04:36:23.000 [notice] Bootstrapped 0% (starting): Starting
May 28 04:36:23.000 [notice] Starting with guard context "default"
May 28 04:36:24.000 [notice] Bootstrapped 5% (conn): Connecting to a relay
May 28 04:36:24.000 [notice] Bootstrapped 10% (conn_done): Connected to a relay
May 28 04:36:25.000 [notice] Bootstrapped 14% (handshake): Handshaking with a relay
May 28 04:36:26.000 [notice] Bootstrapped 15% (handshake_done): Handshake with a relay done
May 28 04:36:26.000 [notice] Bootstrapped 20% (onehop_create): Establishing an encrypted directory connection
May 28 04:36:26.000 [notice] Bootstrapped 25% (requesting_status): Asking for networkstatus consensus
May 28 04:36:26.000 [notice] Bootstrapped 30% (loading_status): Loading networkstatus consensus
May 28 04:36:29.000 [notice] I learned some more directory information, but not enough to build a circuit: We have no usable consensus.
May 28 04:36:29.000 [notice] Bootstrapped 40% (loading_keys): Loading authority key certs
May 28 04:36:29.000 [notice] The current consensus has no exit nodes. Tor can only build internal paths, such as paths to onion services.
May 28 04:36:29.000 [notice] Bootstrapped 45% (requesting_descriptors): Asking for relay descriptors
May 28 04:36:29.000 [notice] I learned some more directory information, but not enough to build a circuit: We need more microdescriptors: we have 0/7118, and can only build 0% of likely paths. (We have 0% of guards bw, 0% of midpoint bw, and 0% of end bw (no exits in consensus, using mid) = 0% of path bw.)
May 28 04:36:30.000 [notice] Bootstrapped 50% (loading_descriptors): Loading relay descriptors
May 28 04:36:31.000 [notice] The current consensus contains exit nodes. Tor can build exit and internal paths.
May 28 04:36:31.000 [notice] Bootstrapped 55% (loading_descriptors): Loading relay descriptors
May 28 04:36:31.000 [notice] Bootstrapped 61% (loading_descriptors): Loading relay descriptors
May 28 04:36:32.000 [notice] Bootstrapped 69% (loading_descriptors): Loading relay descriptors
May 28 04:36:32.000 [notice] Bootstrapped 75% (enough_dirinfo): Loaded enough directory info to build circuits
May 28 04:36:32.000 [notice] Bootstrapped 80% (ap_conn): Connecting to a relay to build circuits
May 28 04:36:32.000 [notice] Bootstrapped 85% (ap_conn_done): Connected to a relay to build circuits
May 28 04:36:32.000 [notice] Bootstrapped 89% (ap_handshake): Finishing handshake with a relay to build circuits
May 28 04:36:33.000 [notice] Bootstrapped 90% (ap_handshake_done): Handshake finished with a relay to build circuits
May 28 04:36:33.000 [notice] Bootstrapped 95% (circuit_create): Establishing a Tor circuit
May 28 04:36:33.000 [notice] Bootstrapped 100% (done): Done
```

Screenshot from tor browser

![2](https://user-images.githubusercontent.com/4345690/170810862-7ad1023f-8252-4833-9757-1174626f67e7.png)
