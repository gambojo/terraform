data "aws_iam_policy_document" "name_role_policy" { # Политика
  statement {                                       # Описание политики
    actions = ["sts:AssumeRole"]                    # Что разрешаем/запрещаем
    effect  = "Allow"                               # Действие разр/запр
    principals {                                    # Списки доступа
      identifiers = ["ec2.amazonaws.com"]           # Разрешить роль для ec2
      type        = "Service"                       # Тип элемента, кому разрешено
    }
  }

}

resource "aws_iam_role" "name_role" { # Роль
  assume_role_policy = data.aws_iam_policy_document.name_role_policy.json
  name               = "Name_role"
}

resource "aws_iam_instance_profile" "profile_name" { # Профиль роли
  role = aws_iam_role.name_role.id
}

resource "aws_iam_role_policy_attachment" "name_policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  role       = aws_iam_role.name_role.id
}


# Правила > Политики > Роли > Применение к сервисам итд.