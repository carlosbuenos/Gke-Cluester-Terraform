# Gke-Cluester-Terraform

# Pré requisitos:
 # Instalação GCE
  curl https://sdk.cloud.google.com | bash && exec -l $SHELL
 
 # Excutar login
  gcloud init
  
 # Instalar o kubectl, o cliente para gerenciar o kubernetes:
  gcloud components install kubectl

  
Script Para Criar um Cluster GKE
# Exemplo:

    resource "google_container_cluster" "gke-cluster-1" {
    name               = "my-first-gke-cluster"
    network            = "default"
    location               = "europe-west1-b"
    initial_node_count = 4
    enable_kubernetes_alpha = "true"
    enable_legacy_abac = "true"
  }
  
  # 1- crie uma pasta para guardar o docuemnto de criação do cluster.
    mkdir Terraform-createcluster
     
  # 2- Entre na pasta criada e crie um arquivo com a extenção .tf no google cloud shell
     cd Terraform-createcluster
     touch Gke-Cluster.tf
     
  # 3- copie o script do arquivo de mesmo nome(Gke-Cluster.tf) existente no repositorio e cole dentro do arquivo
      para efetuar esse processo você pode seguir o tuttorial de referência no link abaixo.
         https://cloud.google.com/shell/docs/viewing-and-editing-files
         
  # 4- Após editar o arquivo e colar o script é hora de fazer a magica acontecer.
  
   # 4.1 Acesse a pasta Terraform-createcluster caso já não o tenha feito
      cd Terraform-createcluster
      
   # 4.2 Execute o comando de inicialização do Terraform.
       terraform init
   
   # 4.3 Execute o comando de confirmação para que o processo seja finalizado.
       terraform apply
      
