    1  git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
    2  ./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
    3  source ~/.bashrc
    4  sudo apt update
    5  sudo apt install ansible -y
    6  sudo apt list --installed |grep ansible
    7  ssh-keygen -t ed25519
    8  ls -l /home/vagrant/.ssh/
    9  cat /home/vagrant/.ssh/id_ed25519.pub >> /home/vagrant/.ssh/authorized_keys
   10  for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
   11  # Add Docker's official GPG key:
   12  sudo apt-get update
   13  sudo apt-get install ca-certificates curl
   14  sudo install -m 0755 -d /etc/apt/keyrings
   15  sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
   16  sudo chmod a+r /etc/apt/keyrings/docker.asc
   17  # Add the repository to Apt sources:
   18  echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
   19    $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
   20  sudo apt-get update
   21  sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
   22  sudo apt list --installed |grep docker
   23  sudo apt install tree
   24  ls -l
   25  sudo fdisk /dev/sdc
   26  sudo fdisk /dev/sdd
   27  sudo wipefs -a /dev/sdc1 /dev/sdd1
   28  sudo pvcreate /dev/sdc1 /dev/sdd1
   29  sudo pvs
   30  sudo vgcreate vg_datos /dev/sdc1
   31  sudo vgcreate vg_temp /dev/sdd1
   32  sudo vgs
   33  sudo lvcreate -L 5M vg_datos -n lv_docker
   34  sudo lvcreate -L 1.5G vg_datos -n lv_workareas
   35  sudo lvcreate -L 512M vg_temp -n lv_swap
   36  sudo lvs
   37  sudo fdisk -l
   38  sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_docker
   39  sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_workareas
   40  sudo lsblk
   41  sudo mkswap /dev/vg_temp/lv_swap
   42  sudo mkdir -p /var/lib/docker
   43  sudo mkdir -p /work
   44  sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
   45  sudo mount /dev/mapper/vg_datos-lv_workareas /work/
   46  sudo swapon /dev/vg_temp/lv_swap
   47  df -h
   48  sudo systemctl restart docker
   49  sudo systemctl status docker
   50  /usr/local/bin/
   51  cd /usr/local/bin/
   52  sudo vim VillalvaAltaUser-Groups.sh
   53  sudo chmod 755 VillalvaAltaUser-Groups.sh
   54  ls -l
   55  cd ~/UTN-FRA_SO_Examenes/202406/docker/
   56  id
   57  sudo usermod -a -G docker $(whoami)
   58  id
   59  exit
   60  id
   61  docker login -u stellavillalva
   62  echo "<div>
   63  <h1> Sistemas Operativos - UTNFRA </h1></br>
   64  <h2> 2do Parcial - Noviembre 2024 </h2> </br>
   65  <h3> Stella Maris Villalva </h3>
   66  <h3> División: 115 </h3>
   67  </div>" > index.html
   68  cat <<EOF > Dockerfile
   69  FROM nginx
   70  COPY index.html /usr/share/nginx/html/index.html
   71  EOF
   72  sudo docker build -t "stellavillalva/web1-villalva" .
   73  df -h
   74  docker image prune -a
   75  docker container prune
   76  docker volume prune
   77  docker system prune -a
   78  sudo systemctl stop docker
   79  sudo systemctl start docker
   80  sudo docker build -t "stellavillalva/web1-villalva" .
   81  ip a
   82  ifconfig | grep -m 1 'inet ' | awk '{print $2}'
   83  sudo apt install net-tools
   84  ifconfig | grep -m 1 'inet ' | awk '{print $2}'
   85  sudo docker build -t "stellavillalva/web1-villalva" .
   86  docker build -t "stellavillalva/web1-svillalva" .
   87  exit 
   88  sudo docker build -t "stellavillalva/web1-villalva" .
   89  sudo docker push "stellavillalva/web1-svillalva"
   90  docker push "stellavillalva/web1-svillalva"
   91  docker image list
   92  docker push "stellavillalva/web1-svillalva:latest"
   93  docker push "stellavillalva/web1-villalva:latest"
   94  docker run -d -p 8080:80 "stellavillalva/web1-villalva"
   95  id
   96  cd ..
   97  ls -l
   98  cd vagrant/
   99  ls -l
  100  cd RT
  101  cd RTA_Examen_20241118/
  102  ls -l
  103  tree
  104  cd ..
  105  ls -l
  106  cd UTN-FRA_SO_Examenes/
  107  ls -l
  108  cd 202406
  109  tree
  110  ls -l
  111  cd docker/
  112  cd..
  113  cd ..
  114  ls -l
  115  cd ..
  116  ls -l
  117  cd RTA_Examen_20241118/
  118  ls -l
  119  vim Punto_A.sh
  120  vim Punto_B.sh
  121  vim Punto_C.sh
  122  vim Punto_D.sh
  123  sudo chmod 755 Punto_A.sh
  124  sudo chmod 755 Punto_B.sh
  125  sudo chmod 755 Punto_C.sh
  126  sudo chmod 755 Punto_D.sh
  127  ls -l
  128  ./Punto_D.sh
  129  vim Punto_D.sh
  130  sudo chmod 755 Punto_D.sh
  131  ls -l
  132  ./Punto_D.sh
  133  vim Punto_D.sh
  134  sudo chmod 755 Punto_D.sh
  135  ls -l
  136  ./Punto_D.sh
  137  ls -l
  138  cd ..
  139  ls -l
  140  git clonehttps://github.com/stellavillalva/UTNFRA_SO_2do_Parcial_-Villalva-.git
  141  git clone https://github.com/stellavillalva/UTNFRA_SO_2do_Parcial_-Villalva-.git
  142  ls -l
  143  cd UTN-FRA_SO_Examenes/
  144  ls -l
  145  cd 202406
  146  cd ..
  147  ls -l
  148  cd UTNFRA_SO_2do_Parcial_-Villalva-/
  149  cp -r ~/UTN-FRA_SO_Examenes/202406 ~/UTNFRA_SO_2do_Parcial_-Villalva-/
  150  ls -l
  151  cp -r ~/RTA_Examen_20241118 ~/UTNFRA_SO_2do_Parcial_-Villalva-/
  152  ls -l
  153  tree
  154  history > ~/UTNFRA_SO_2do_Parcial_Rodicio/.bash_history
  155  history > ~/UTNFRA_SO_2do_Parcial_-Villalva-/.bash_history
