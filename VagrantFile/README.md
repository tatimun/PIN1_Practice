Maquina Virtual: 

1. Chequear que estos puertos esten abiertos, hacer cambios necesarios
2. Ejecutar en la maquina para agregar a la IP anfitrion

            ifconfig

![Alt text](image.png)


4. Ejecutar el [Script](./setUp.sh)

5. Ejecutar los comandos
    
        docker ps

Tomar el output ID del contenedor de Nexus

6. Ejecutar el comando:

        docker exec -ti [ID DE NEXUS] bash

7. Una vez dentro del contenedor nexus:

bash > cd / 

bash > cd nexus-data/

bash > cat admin.password

8. Con esta contraseña se ingresara al Nexus 

9. Configuracion del Jenkins

Definition:
Pipeline script from SCM

SCM: Git

Repository URL: URL del repo
Credentials: None

10. Ir a Settings en [Nexus](http:localhost/8081)

11. Crear Repositorio
    - Permitir HTTP en puerto 5000


12. Ejecutar pipeline en Jenkins
