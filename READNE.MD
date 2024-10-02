ssh root@149.20.190.30 << EOF
    mkdir -p /usr/JenkinCICDsimple
    cd /usr/JenkinCICDsimple

    # Check if the directory is a Git repository
    if [ ! -d ".git" ]; then
        git clone https://github.com/razedulislam/jenkins-cicd-simple-project.git .
    else
        git pull origin main
    fi
EOF