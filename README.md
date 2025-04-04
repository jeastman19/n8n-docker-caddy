# n8n-docker-caddy

<img src="./images/n8n-logo.png" >

<img src="./images/caddyserver.webp" width="430">

---

Este proyecto es derivado del proyecto [n8n-io/n8n-docker-caddy](https://github.com/n8n-io/n8n-docker-caddy)

## Contenido

- [Uso](#uso)
  - [Clonar el repositorio](#clonar-el-repositorio)
  - [Crear variables de entorno](#crear-variables-de-entorno)
  - [Crer el archivo caddy_config/Caddyfile](#crear-el-archivo-caddyfile)
  - [Levantar los servicios](#levantar-los-servicios)

### Uso

#### Clonar el repositorio

```sh
git clone git@github.com:jeastman19/n8n-docker-caddy.git
```

#### Crear variables de entorno

```sh
cp env.example .env
```

##### Reemplazar los valores de las variables de entorno

#### Crer el archivo caddy_config/Caddyfile

Para crear este archivo, antes ya deben existir las variables de entorno adecuadamente configuradas.

##### Ejecutar script que se encarga de crear el archivo

```sh
./config.sh
```

#### Levantar los servicios

```sh
docker compose up -d
```
