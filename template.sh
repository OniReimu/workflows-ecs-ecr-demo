#!/bin/bash
cat > workflows-demo-task-definition.json <<EOF
[
    {
      "volumesFrom": [],
      "memory": 300,
      "portMappings": [
        {
          "hostPort": 8080,
          "containerPort": 80,
          "protocol": "tcp"
        }
      ],
      "essential": true,
      "entryPoint": [],
      "mountPoints": [],
      "name": "todo-demo",
      "environment": [],
      "links": [],
      "image": "854586034747.dkr.ecr.us-west-2.amazonaws.com/workflows-demo:$WERCKER_BRANCH_NAME",
      "command": [],
      "cpu": 10
    }
]
EOF
