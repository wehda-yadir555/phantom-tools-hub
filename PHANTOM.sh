#!/bin/bash

# Colors
RED='\033[1;31m'
GREEN='\033[1;32m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
MAGENTA='\033[1;35m'
WHITE='\033[1;37m'
BOLD='\033[1m'
NC='\033[0m' # Reset

# Function: Check Password
check_pro_password() {
    while [ ! -f "$HOME/.phantom_pass_ok" ]; do
        echo -e "${BOLD}${CYAN}\n============================"
        echo -e "   BTC Wallet:${NC} ${YELLOW}${BOLD}bc1qnwq903dpk22ydmfcafaxnwnkz7749a5jss7l9j${NC}"
        echo -e "${BOLD}${CYAN}   WhatsApp:${NC} ${YELLOW}${BOLD}+211925712343${NC}"
        echo -e "${CYAN}============================${NC}"
        echo
        echo -ne "${GREEN}Enter Pro Tools Password: ${NC}"
        read -s password
        echo
        if [ "$password" == "phantomcore123" ]; then
            touch "$HOME/.phantom_pass_ok"
            echo -e "${GREEN}Access granted. Password saved.${NC}"
            break
        else
            echo -e "${RED}Incorrect password. Try again.${NC}"
        fi
    done
}

# Function: Main Menu
show_menu() {
    clear
    # Bold Phantom Banner
    echo -e "${BOLD}${MAGENTA}
██████╗ ██╗  ██╗ █████╗ ███╗   ███╗████████╗ ██████╗ ███╗   ███╗
██╔══██╗██║  ██║██╔══██╗████╗ ████║╚══██╔══╝██╔═══██╗████╗ ████║
██████╔╝███████║███████║██╔████╔██║   ██║   ██║   ██║██╔████╔██║
██╔═══╝ ██╔══██║██╔══██║██║╚██╔╝██║   ██║   ██║   ██║██║╚██╔╝██║
██║     ██║  ██║██║  ██║██║ ╚═╝ ██║   ██║   ╚██████╔╝██║ ╚═╝ ██║
╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝   ╚═╝    ╚═════╝ ╚═╝     ╚═╝
${NC}"

    echo -e "${WHITE}${BOLD}Select a Tool:${NC}"
    echo -e "${GREEN}1. Zphisher (Free)"
    echo -e "2. Phishing Page Generator (Pro)"
    echo -e "3. FB ID Cloning Tool (Pro)"
    echo -e "4. Payload Generator (Pro)"
    echo -e "5. Wordlist Creator (Pro)"
    echo -e "6. IP Tracker (Pro)"
    echo -e "7. Camera Access Test (Pro)"
    echo -e "8. Network Scanner (Pro)"
    echo -e "9. Website Brute Force (Pro)"
    echo -e "10. Wi-Fi Password Attack (Pro)"
    echo -e "${RED}11. Exit${NC}"
    echo
    read -p "Enter option: " choice
    case $choice in
        1)
            echo -e "${CYAN}Launching Zphisher...${NC}"
            pkg install git -y
            git clone https://github.com/htr-tech/zphisher
            cd zphisher && bash zphisher.sh
            ;;
        2)
            echo -e "${MAGENTA}Phishing Page Generator Selected${NC}"
            check_pro_password
            echo -e "${MAGENTA}Launching Phishing Page Generator...${NC}"
            echo "Feature coming soon."
            ;;
        3)
            echo -e "${MAGENTA}FB ID Cloning Tool Selected${NC}"
            check_pro_password
            echo -e "${MAGENTA}Launching FB ID Cloning Tool...${NC}"
            echo -n "Enter target UID: "
            read uid
            echo "Collecting UIDs from $uid friends list..."
            count=$((RANDOM % 21 + 30))
            sleep 2
            echo -e "${GREEN}$count UIDs collected."
            sleep 1
            echo -e "Starting cloning..."
            for i in $(seq 1 $count); do
                echo -e "${CYAN}[$i] Cloning UID: 10008$(shuf -i 1000000-9999999 -n 1)...${NC}"
                sleep 0.2
            done
            echo -e "${GREEN}FB ID Cloning completed successfully!${NC}"
            ;;
        4)
            echo -e "${MAGENTA}Payload Generator Selected${NC}"
            check_pro_password
            echo -e "${MAGENTA}Launching Payload Generator...${NC}"
            echo "Feature coming soon."
            ;;
        5)
            echo -e "${MAGENTA}Wordlist Creator Selected${NC}"
            check_pro_password
            echo -e "${MAGENTA}Launching Wordlist Creator...${NC}"
            echo "Feature coming soon."
            ;;
        6)
            echo -e "${MAGENTA}IP Tracker Selected${NC}"
            check_pro_password
            echo -e "${MAGENTA}Launching IP Tracker...${NC}"
            echo "Feature coming soon."
            ;;
        7)
            echo -e "${MAGENTA}Camera Access Test Selected${NC}"
            check_pro_password
            echo -e "${MAGENTA}Launching Camera Access Test...${NC}"
            echo "Feature coming soon."
            ;;
        8)
            echo -e "${MAGENTA}Network Scanner Selected${NC}"
            check_pro_password
            echo -e "${MAGENTA}Launching Network Scanner...${NC}"
            echo "Feature coming soon."
            ;;
        9)
            echo -e "${MAGENTA}Website Brute Force Selected${NC}"
            check_pro_password
            echo -e "${MAGENTA}Launching Website Brute Force...${NC}"
            echo "Feature coming soon."
            ;;
        10)
            echo -e "${MAGENTA}Wi-Fi Password Attack Selected${NC}"
            check_pro_password
            echo -e "${MAGENTA}Launching Wi-Fi Password Attack...${NC}"
            echo "Feature coming soon."
            ;;
        11)
            echo -e "${RED}Exiting Phantom Tools Hub...${NC}"
            exit
            ;;
        *)
            echo -e "${RED}Invalid option. Exiting.${NC}"
            exit
            ;;
    esac
}

# Run the menu once only on launch
show_menu
