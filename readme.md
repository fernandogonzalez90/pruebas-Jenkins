# Repo para hacer pruebas con Jenkins

#### Este repo es para hacer pruebas con jenkigs, es un fork de:

https://github.com/valentinfernandez1/Jenkins

## Este repo cuenta un Dockerfile

Evita tener que instalar jenkins, npm y nodejs.

Ademas tiene configurada una persistencia de datos para que todos los cambios queden guardados al cerrar el contenedor.

Solo bastaria con instalar docker en donde tu sistema operativo y ejecutar los siguientes comandos desde la terminal:

##### Crear la imagen:

    docker build -t jenkins-npm-persistente .


##### Ejecutar el contenedor con la persistencia de datos:
    docker run -d -p 8080:8080 -p 50000:50000 --name jenkins-npm-persistente -v jenkins-data:/var/jenkins_home jenkins-npm-persistente


##### Ingresar a jenkins con la url:

http://localhost:8080

la primera vez les pedira la contraseña y la obtienen con el siguiente comando:

    docker exec jenkins-npm-persistente cat /var/jenkins_home/secrets/initialAdminPassword

##### Para apagar el servidor ejecutan:

    docker stop jenkins-npm-persistente

##### Si lo quieres volver a ejecutar:

    docker start jenkins-npm-persistente