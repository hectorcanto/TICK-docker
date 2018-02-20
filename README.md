# TICK Stack

Run the complete TICK stack using this [docker-compose](https://docs.docker.com/compose/) file.
By using docker-compose all four official TICK stack images are started and linked together.
To know more about the individual components see [this](https://influxdata.com/)

## Elements

* Server: Influxdb + Kapacitor + Chronograf.
* Client: Telegraf.
* Proxy: NGINX (Includes SSL encryption & user/password access).

## Usage (BIN files)

### Server

* `create_keys`: Generate SSL self-signed certificate.
* `start_server`: Generate SSL self-signed certificate if needed & start server (Influxdb + Kapacitor + Chronograf).
* `stop_server`: Stop server.

### Client

* `add_client`: Add client (Telegraf).
* `del_client`: Delete client.

### Proxy

* `add_user`: Add user & password authentication to nginx proxy.
* `add_proxy`: Add NGINX proxy for Chronograf.
* `del_proxy`: Deletes NGINX proxy. Then remove `chronograf > command` line from `docker-compose.yml` and restart Chronograf container.
* `add_user`: Add user & password authentication to nginx proxy.

### General

* `teardown`: Stops ALL elements & deletes dynamic data.

## Frontend

* Go to [http://127.0.0.1/chronograf](http://127.0.0.1/chronograf)

---

Stack created by Carles San Agustin

* http://www.carlessanagustin.com
* https://twitter.com/carlesanagustin
