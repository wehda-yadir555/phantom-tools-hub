#!/bin/bash

# === Color Codes ===
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
NC='\033[0m'

# === Pro Password ===
PRO_PASSWORD="w1n1888"

# === Banner Function ===
banner() {
    clear
    echo -e "${CYAN}"
    echo "  ██████╗ ██╗  ██╗ █████╗ ███╗   ███╗████████╗ ██████╗  ██████╗ ██╗     "
    echo " ██╔════╝ ██║  ██║██╔══██╗████╗ ████║╚══██╔══╝██╔═══██╗██╔═══██╗██║     "
    echo " ██║  ███╗███████║███████║██╔████╔██║   ██║   ██║   ██║██║   ██║██║     "
    echo " ██║   ██║██╔══██║██╔══██║██║╚██╔╝██║   ██║   ██║   ██║██║   ██║██║     "
    echo " ╚██████╔╝██║  ██║██║  ██║██║ ╚═╝ ██║   ██║   ╚██████╔╝╚██████╔╝███████╗"
    echo "  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝   ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝"
    echo -e "${RED}          THIS TOOL IS FOR EDUCATIONAL PURPOSES ONLY"
    echo -e "     PHANTOM IS NOT RESPONSIBLE FOR ILLEGAL USE OF THIS POWERFUL TOOL${NC}"
    echo
    echo -e "${YELLOW}To unlock Pro Tools, please pay to the following:${NC}"
    echo -e "${GREEN}BTC Address:${NC} bc1qnwq903dpk22ydmfcafaxnwnkz7749a5jss7l9j"
    echo -e "${CYAN}WhatsApp:${NC} +211925712343 (for payment or more info)"
    echo
}

# === Pro Password Checker ===
check_pro() {
    read -p "Enter Pro Password: " input_pass
    if [[ "$input_pass" == "$PRO_PASSWORD" ]]; then
        echo -e "${GREEN}[+] Access Granted to Pro Tool${NC}"
        return 0
    else
        echo -e "${RED}[-] Incorrect Password! Pro Tool Locked.${NC}"
        return 1
    fi
}

# === Main Menu ===
while true; do
    banner
    echo -e "${CYAN}Select a tool to install:${NC}"
    echo -e "${GREEN} 1.${NC} Nmap               ${YELLOW}[FREE]${NC}  - Network Scanner"
    echo -e "${GREEN} 2.${NC} Zphisher           ${RED}[PRO]${NC}   - Phishing Toolkit"
    echo -e "${GREEN} 3.${NC} FB ID Cloning      ${RED}[PRO]${NC}   - Fake Facebook Cloning"
    echo -e "${GREEN} 4.${NC} Hydra              ${YELLOW}[FREE]${NC}  - Password Cracker"
    echo -e "${GREEN} 5.${NC} Metasploit         ${RED}[PRO]${NC}   - Exploitation Framework"
    echo -e "${GREEN} 6.${NC} RED_HAWK           ${RED}[PRO]${NC}   - Info Gathering Tool"
    echo -e "${GREEN} 7.${NC} sqlmap             ${RED}[PRO]${NC}   - SQL Injection Tool"
    echo -e "${GREEN} 8.${NC} Hack Wi-Fi         ${RED}[PRO]${NC}   - Wireless Attack Suite"
    echo -e "${GREEN} 9.${NC} CamPhish           ${RED}[PRO]${NC}   - Access Victim's Camera"
    echo -e "${GREEN}10.${NC} Web Phishing       ${RED}[PRO]${NC}   - Phishing Page Generator"
    echo -e "${GREEN}11.${NC} Exit"
    echo
    read -p "Enter your choice [1-11]: " choice

    case $choice in
        1)
            pkg install nmap -y
            ;;
        2)
            check_pro && git clone --depth=1 https://github.com/htr-tech/zphisher.git
            ;;
        3)
            check_pro && echo -e "${YELLOW}This is a fake FB cloning tool for demo.${NC}" && mkdir FB-Cloning && echo "FAKE CLONER EXECUTED SUCCESSFULLY" > FB-Cloning/output.txt
            ;;
        4)
            pkg install hydra -y
            ;;
        5)
            check_pro && pkg install unstable-repo -y && pkg install metasploit -y
            ;;
        6)
            check_pro && git clone https://github.com/Tuhinshubhra/RED_HAWK.git
            ;;
        7)
            check_pro && pkg install python -y && pip install sqlmap
            ;;
        8)
            check_pro && echo -e "${YELLOW}This is a demo tool for Wi-Fi attack simulation.${NC}"
            ;;
        9)
            check_pro && git clone https://github.com/techchipnet/CamPhish.git
            ;;
        10)
            check_pro && git clone https://github.com/WhiteeDevil/WebPhish.git
            ;;
        11)
            echo -e "${CYAN}Thanks for using PhantomCore Hub.${NC}"
            exit
            ;;
        *)
            echo -e "${RED}Invalid option. Try again.${NC}"
            ;;
    esac

    read -p "Press Enter to return to menu..."
done
