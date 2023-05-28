# AOS-23

En este proyecto hemos trabajado dentro de Ubuntu en WSL2.

Para levantar el sistema se necesitan los archivos de la carpeta "p2" de nuestro repositorio de GitHub, que se pueden encontrar entregados como .rar, o en caso de fallo en https://github.com/SergioClaver/AOS-23/tree/main/p2

Es muy recomendable leer la memoria de la práctica para entender las decisiones de diseño y su funcionamiento. Esta memoria está en la carpeta "p2" del proyecto, con nombre "Práctica 2 AOS Grupo 10". En caso de no poder acceder al archivo, puede verse en el siguiente enlace: https://docs.google.com/document/d/1HtZ4sU47EYpgELH3IJaCEVClWJFzzreGB-oK5dK3Ut4/edit?usp=sharing

Para probar el sistema:

Para comprobar que el sistema funciona siendo descargado, hemos simulado la descarga de un .rar que contiene los archivos de la carpeta "p2" de nuestro repositorio, y lo hemos descomprimido en una carpeta llamada "pruebafinal", para así poder mostrar en este readme los outputs esperados.

(Las siguientes imágenes de referencia se han subido a la plataforma Gyazo para que puedan ser visibles mediante un link)

Navegamos hasta la carpeta "p2", y ejecutamos "docker compose up". Deberían levantarse los servicios de esta forma:  https://gyazo.com/6ea25146f83951f26aa95e025a3caa20

Una vez levantados los servicios, podemos comprobar que funciona tanto el front en SwaggerUI, como el Back, haciendo llamadas desde Postman, para ver imágenes de referencia de estos, vaya a la sección de Decisiones de diseño y funcionamiento de la memoria del proyecto (https://docs.google.com/document/d/1HtZ4sU47EYpgELH3IJaCEVClWJFzzreGB-oK5dK3Ut4/edit?usp=sharing)

Ya comprobado el funcionamiento en Docker, realizamos un "minikube start", para iniciar minikube. Despues navegamos a la carpeta "minikube" que está dentro de la carpeta "p2" del proyecto, y ejecutamos un "kubectl apply -f ."

Deberian aparecer configurados los servicios, y podemos comprobar que están funcionando correctamente mediante "kubectl get pods" https://gyazo.com/b8798d084fe4199b77534301e2c74259

Para comprobar que funciona correctamente, ejecutamos los comandos "minikube service frontend --url" y "minikube service frontend --url", para tener la dirección de acceso al front de SwaggerUI y la dirección de backend a la que enviar las llamadas http. Puede verse este funcionamiento a detalle en la memoria del proyecto. (https://docs.google.com/document/d/1HtZ4sU47EYpgELH3IJaCEVClWJFzzreGB-oK5dK3Ut4/edit?usp=sharing)

Para ver las imagenes de Docker utilizadas, los links a los 3 repositorios son:

Front: https://hub.docker.com/repository/docker/svntyfour/frontaosgrupo10/general
Back: https://hub.docker.com/repository/docker/svntyfour/backaosgrupo10/general
Proxy: https://hub.docker.com/repository/docker/svntyfour/proxyaosgrupo10/general

El link al repositorio general en GitHub (Lo relacionado a esta práctica está contenido en la carpeta "p2" unicamente): https://github.com/SergioClaver/AOS-23/tree/main/p2


