#!/bin/bash
# QuickLaunch Startup Lab - command evidence log
# Replace IP addresses only if your final lab IPs are different.

# Local IP verification on Linux/Kali/Ubuntu
ip a
hostname
hostname -I

# Windows IP verification (run in Command Prompt/PowerShell)
# ipconfig /all

# Connectivity checks from Kali
ping -c 4 10.10.10.1
ping -c 4 10.10.10.5
ping -c 4 10.10.20.1
ping -c 4 10.10.20.10

# Host discovery
nmap -sn 10.10.10.0/24
nmap -sn 10.10.20.0/24

# Service enumeration
nmap -sV 10.10.10.1
nmap -sV 10.10.10.5
nmap -sV 10.10.20.1
nmap -sV 10.10.20.10

# Safe validation checks used to support Milestone 3
nmap --script smb-protocols -p445 10.10.10.5
nmap --script ssl-enum-ciphers -p3389 10.10.10.5
nmap -sV -p21,22,80,139,445,3306 10.10.20.10

# Nessus evidence was collected using Nessus Essentials Basic Network Scan
# Targets: 10.10.10.1, 10.10.10.5, 10.10.20.1, 10.10.20.10
