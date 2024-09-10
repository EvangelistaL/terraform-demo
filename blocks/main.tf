#bloco terraform -> para configs do terraform
terraform {
    required_version = "1.3.0" #outras opções "=1.3.0" - ">= 1.0.0" - "!= 1.0.0" - ">= 1.0.0 < 1.3.0" - "~> 1.0.0 (esse exemplo serve para rodar da versão entre 1.0.0 até 1.0.n. Ou seja, até a maior versão minor)"
    required_providers {
        aws = {
            version = "1.0"
            source = "hashicorp/aws"
        }
        azurerm = {
            version = "2.0"
            source = "hashicorp/azurerm"
        }
    }
    backend "azurerm" {
        
    }
}

#bloco provider -> configurações para providers (aws, azure, etc.)
provider "aws" {

}

#bloco resource -> cria os recursos no provider - resource "tipo_resource" "nome_resource"
resource "aws_instance" "vm1" {

}

#bloco data -> Recebe uma info de fora do código terraform para injetar no projeto
data "aws_ami" "ami_image" { #nesse caso o data está recebendo uma imagem aws_ami e injetando no projeto e deve ser inserido no escopo as infos para buscar essa imagem
    
}

#bloco module -> os modulos podem ser locais ou remotos. E eles podem ser utilizados para configurar uma rede de comunicação de uma vcp, por exemplo
module "network"{

}

#bloco variable -> define as variáveis no projeto
variable "vm_name" {

}

#bloco output -> serve para externalizar alguma info no código tf. Exemplo: utilizar um dado do tf para utilizar na pipeline
output "vm1_ip" {

}

#bloco locals -> define funções que são utilizados com frequencia para serem reutilizados
locals {

}