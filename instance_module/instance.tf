resource "aws_instance" "instance" {  # Сервер
    ami = "ami-0f9fc25dd2506cf6d"
    instance_type = "t2.micro"
    key_name = "n.virginia"
    vpc_security_group_ids = [var.security_group]
    iam_instance_profile = var.instance_profile
}


/*
resource "aws_eip" "public_ip" {  # Статичный адрес
    instance = aws_instance.instance.id
}

resource "aws_ebs_volume" "storage" {  # Дисковое хранилище
    availability_zone = aws_instance.instance.availability_zone
    size = "8"
    type = "gp2"
}

resource "aws_volume_attachment" "storage" {  # Подключение хранилища
    device_name = "/dev/sds"
    instance_id = aws_ebs_volume.storage.id
    volume_id = aws_ebs_volume.storage.id
}
*/