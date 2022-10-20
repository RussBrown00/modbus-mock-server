# Why?

This docker projects serves as a very quick / simple way to stand up a mock Modbus server with [pymodbus](https://github.com/riptideio/pymodbus). This simply removes needing to install the project and it's dependencies. This could also be useful for e2e testing and validation in a deployment pipeline

# How

### Quickest default is to run the container and get the console

```
docker run --rm -it -p 502:502 modbus-mock-server
```

### Run in the background

```
docker run --rm -d -p 502:502 modbus-mock-server
```

# Environment Vars

* SERVER_TYPE: str [tcp, serial, tls, udp] = tcp
* SERVER_PORT: int = 502
* DEVICE_ID: int = 1
