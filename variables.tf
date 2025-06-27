variable "availability_zone" {
  description = "The availability zone to deploy the resources into"
  type        = string
}

variable "ami_id" {
  description = "The ami to deploy the resources into"
  type        = string
}

variable "key_pair_name" {
  description = "The key pair to deploy the resources into"
  type        = string
}






variable "webserver" {
  type    = string
  default = <<-EOF
              #!/bin/bash

              # Update packages and install necessary packages
              sudo apt update
              sudo apt-get install unzip
              sudo apt-get install p7zip -y
              sudo apt install apache2 -y
              sudo apt-get install nginx -y
              # Add the ondrej/php repository and install PHP 8.0
              sudo add-apt-repository -y ppa:ondrej/php
              sudo apt update
              sudo apt install php8.0 -y

              # to check packages installed
              # sudo php -m

              # Update packages and install necessary packages
              sudo apt install php8.0-dom
              sudo apt install php8.0-gd -y
              sudo apt install php8.0-intl  
              sudo apt install php8.0-mbstring -y
              # sudo apt install php8.0-simplexml
              sudo apt install php8.0-xml 
              sudo apt install php8.0-xsl 
              sudo apt install php8.0-zip -y
              sudo apt-get install php8.0-curl
              sudo apt install php8.0-pdo-mysql
              sudo apt-get install php8.0-bcmath -y

              # Install Composer
              curl -sS https://getcomposer.org/installer | sudo php8.0 -- --install-dir=/usr/local/bin --filename=composer



              EOF
}












