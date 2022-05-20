resource "aws_security_group" "groupname" { # Объяв-е ресурса и имя
  name = "Groupname"                        # Кастомное имя для интерфейса
}

resource "aws_security_group_rule" "rulename_in" { # Правило для гр.
  from_port         = 80
  protocol          = "TCP"
  security_group_id = aws_security_group.groupname.id
  to_port           = "80"
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "rulename_out" {
  from_port         = 0
  protocol          = "all"
  security_group_id = aws_security_group.groupname.id
  to_port           = 0
  type              = "egress"
  cidr_blocks       = ["0.0.0.0/0"]
}