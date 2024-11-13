#!/bin/bash

# Function to extract Nmap information
function extractPorts() {
    local file="$1"

    if [[ ! -f "$file" ]]; then
        echo "Error: File '$file' not found."
        return 1
    fi

    local ports ip_address
    ports=$(grep -oP '\d{1,5}/open' "$file" | awk '{print $1}' FS='/' | xargs | tr ' ' ',')
    ip_address=$(grep -oP '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}' "$file" | sort -u | head -n 1)

    {
        echo -e "\n[*] Extracting information...\n"
        echo -e "\t[*] IP Address: $ip_address"
        echo -e "\t[*] Open ports: $ports\n"
        echo -e "[*] Ports copied to clipboard\n"
    } > extractPorts.tmp

    echo "$ports" | tr -d '\n' | xclip -sel clip

    cat extractPorts.tmp
    rm extractPorts.tmp
}

# Check if the script is being executed with an argument
if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <nmap_output_file>"
    exit 1
fi

# Call the function with the provided argument
extractPorts "$1"
