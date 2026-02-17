#!/bin/bash

# Update package list dan install unzip jika belum ada
apt update -y
apt install -y unzip wget

# Mengunduh dan mengekstrak menu.zip
wget https://raw.githubusercontent.com/hsspunya93/CBT/main/config/menu.zip
unzip -P "orangbanua" menu.zip
chmod +x menu/*
mv menu/* /usr/local/sbin
rm -rf menu
rm -rf menu.zip