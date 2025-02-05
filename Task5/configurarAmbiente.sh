#!/bin/bash
mkdir -p ~/aczg_scripts
cp iniciar_projeto.sh azginit.sh aczgfinish.sh executar_projeto.sh mostrar_log.sh ~/aczg_scripts/
chmod +x ~/aczg_scripts/*.sh
echo "alias iniciar-projeto='~/aczg_scripts/iniciar_projeto.sh'" >> ~/.bashrc
echo "alias aczginit='~/aczg_scripts/aczginit.sh'" >> ~/.bashrc
echo "alias aczgfinish='~/aczg_scripts/aczgfinish'" >> ~/.bashrc
echo "alias aczglogs='~/aczg_scripts/mostrar_log.sh'" >> ~/.bashrc
(crontab -1 2>/dev/null; echo "*/5 * * * * ~/aczg_scripts/executar_projeto.sh") | crontab - 

