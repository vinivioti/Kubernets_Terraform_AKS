# atividade_kubernetes
Quarta atividade do curso Infrastructure and Cloud Computing

Professor: João Victorino

## Alunos:

Leonardo Ananias do Nascimento Azogue

Vinissius Vioti dos Santos

## ***Descrição Atividade:***
Subir dois pods, nginx e mysql, mapeando a porta 80 do nginx para acesso externo ao cluster e permitir que o contêiner do nginx tenha comunicação de rede no contêiner mysql pela porta 3306. A atividade pode ser feita localmente (minikube), AKS (Azure), EKS (AWS) ou no GKE (GCP). Se quiser criar o cluster nuvem Kubernetes com Terraform é opcional. Enviar os arquivos yaml pelo GitHub.

> Passo a passo
> 
'''

Baixar o código no github https://github.com/vinivioti/Kubernets_Terraform_AKS.git
abra o Visual Code na pasta do projeto
Execute o comando:$ az login 
Execute o comando:$ Terraform init 
Execute o comando:$ Terraform plan
Execute o comando:$ apply -auto-approve
Execute o comando:$ az aks get-credentials --resource-group rs_Leonardo_Vinissius --name atividade_kubernentes
Execute o comando:$ kubectl get nodes
Execute o comando:$ kubectl apply -f .\pods\

'''

