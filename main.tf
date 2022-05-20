# Блок описания версии утилиты и провайдера
terraform {                     # Объявление
  required_version = "1.1.9"    # Версия терраформа
  required_providers {          # Объявление провайдера
    aws = {                     # Провайдер
      source  = "hashicorp/aws" # Регистр провайдера
      version = "4.9.0"         # Версия провайдера
    }
  }
}

# Блок конфигурации провайдера
provider "aws" { # Конфигурации провайдера
  # profile = "admin"
  access_key = "AKIA2TFICM5HGCPW645E"
  secret_key = "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"
  region     = "us-east-1" # Регион
}
