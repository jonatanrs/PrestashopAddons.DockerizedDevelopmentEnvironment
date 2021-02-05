# PrestashopAddons.DockerizedDevelopmentEnvironment
This is a bootstraping skeleton module generated from the prestashop module generator to start up develop a prestashop module over a dockerized environment.
# How to run

## Deploy the docker environment

Execute `docker compose up -d -p dockerizedtestmodule` in a shell:

```Shell Session
C:\repo>docker compose up -d -p dockerizedtestmodule
The new 'docker compose' command is currently experimental. To provide feedback or request new features please open issues at https://github.com/docker/compose-cli
[+] Building 0.2s (12/12) FINISHED
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 32B                                                                                0.0s
 => [internal] load .dockerignore                                                                                  0.0s
 => => transferring context: 2B                                                                                    0.0s
 => [internal] load metadata for docker.io/prestashop/prestashop:latest                                            0.0s
 => [1/8] FROM docker.io/prestashop/prestashop:latest                                                              0.0s
 => CACHED [2/8] RUN pecl install xdebug                                                                           0.0s
 => CACHED [3/8] RUN docker-php-ext-enable xdebug                                                                  0.0s
 => CACHED [4/8] RUN echo 'zend_extension=xdebug.so' >> /usr/local/etc/php/php.ini                                 0.0s
 => CACHED [5/8] RUN echo '[XDebug]' >> /usr/local/etc/php/php.ini                                                 0.0s
 => CACHED [6/8] RUN echo 'xdebug.mode=debug' >> /usr/local/etc/php/php.ini                                        0.0s
 => CACHED [7/8] RUN echo 'xdebug.start_with_request=yes' >> /usr/local/etc/php/php.ini                            0.0s
 => CACHED [8/8] RUN echo 'xdebug.client_port=9000' >> /usr/local/etc/php/php.ini                                  0.0s
 => exporting to image                                                                                             0.1s
 => => exporting layers                                                                                            0.0s
 => => writing image sha256:068a3f6b75ab11270a17cb78c3f4d230036e2a1503bb0c9a70bf79aa99022289                       0.0s
 => => naming to docker.io/library/dockerizedtestmodule_web                                                        0.0s
[+] Running 3/2
 - Network "dockerizedtestmodule_default"  Created                         0.0s
 - dockerizedtestmodule_db                 Cr...                           0.1s
 - dockerizedtestmodule_web                C...                            0.0s

C:\repo>
```

# Customize
If you want to develop your own module from this skeleton, change the following:

1. Rename the module folder `dockerizedtestmodule` and the file `dockerizedtestmodule/dockerizedtestmodule.php` for `YOURMODULENAME`
2. Rename the `dockerizedtestmodule` class and `name` attribute:
    ```PHP
    class YOURMODULENAME extends Module
    {
        protected $config_form = false;

        public function __construct()
        {
            $this->name = 'YOURMODULENAME';
    ```
3. Change the environment variables in the docker compose environment file `.env`
    ```
    COMPOSE_PROJECT_NAME=YOURMODULENAME
    PORT=8090
    ```
4. Execute `docker compose up -d -p YOURMODULENAME`
