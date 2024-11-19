#!/bin/bash

# Ruta del repositorio
cd ~/UTN-FRA_SO_Examenes/202406/docker/

# sudo usermod -a -G docker $(whoami)
# exit
# vagrant ssh

id
docker login -u stellavillalva << EOF
dckr_pat_dSfFnDB3Ehi3-qeA1pIcneMkOj4
EOF

# Modificar index.html
echo "<div>
<h1> Sistemas Operativos - UTNFRA </h1></br>
<h2> 2do Parcial - Noviembre 2024 </h2> </br>
<h3> Stella Maris Villalva </h3>
<h3> División: 115 </h3>
</div>" > index.html

# Crear Dockerfile
cat <<EOF > Dockerfile
FROM nginx
COPY index.html /usr/share/nginx/html/index.html
EOF

# Construir y pushear la imagen
docker build -t "stellavillalva/web1-svillalva" .
docker push "stellavillalva/web1-svillalva:latest"

# Crear script run.sh
cat <<EOF > run.sh
#!/bin/bash
docker run -d -p 8080:80 "stellavillalva/web1-svillalva"
EOF

