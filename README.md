# PIN1_Practice
 
 Maquina Virtual:

 1. Instalar vagrant
 2. Clonar el repo y posicionarse en la carpeta donde esta el vagrantfile
 3. Ejecutar: 
        vagrant up
4. Cmambiar la configuracion a "adaptador puente" de la maquina virtual


Dentro de la maquina virtual:

1. Clonamos el directorio desde dentro de la maquina
        git clone https://github.com/tercermundo/PIN1.git 
2. Posicionarse en la carpeta 
3. Ejecutar para la creacion usando el dockerfile:

        docker build -t pin1 .

4. Correr el contenedor con lo creado anteriormente en puerto 3000 indicado en el index.js

        docker run -d --name pin1 -p 3000:3000 pin1

5. Necesistamos el IP de la maquina

        ip addr show 

6. Despues del primer inet, tendremos la IP y para chequear haremos: 

        {IP de la maquina}:3000/add/1/2 

7. Luego necesitamos crear el segundo contenedor de jenkins

        docker run -dit -p 8080:8080 \
        --network=host \
        -v /var/run/docker.sock:/var/run/docker.sock \
        --name Jenkins-curso \
        docker.io/mguazzardo/pipe-seg
