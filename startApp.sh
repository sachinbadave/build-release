#!/bin/bash

mvn exec:exec -Dexec.executable="java" -Dexec.args="-Xmx200m -cp %classpath:target/sachin.devops-0.0.1-SNAPSHOT.jar org.sachin.devops.mongodb.trials.Trial"
