#!/bin/bash

echo " ==== CONFIGURANDO DATA E HORA ==="

#Timezone
echo "Definindo timezone..."
timedatectl set-timezone America/Sao_Paulo

# Ativar sincronização automática (NTP)
echo "Ativando NTP..."
timedatectl set-ntp true

# Garantir serviço ativo
systemctl enable systemd-timesyncd
systemctl restart systemd-timesyncd

# Forçar sync imediato
echo "Forçando sincronização..."
timedatectl status

echo " ==== FINALIZADO ===="
