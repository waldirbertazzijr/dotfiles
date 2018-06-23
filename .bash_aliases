# Start development machine
alias start_dev='VBoxManage startvm "Development" --type headless'

# Connect to local development machine
alias dev="ssh -i ~/.ssh/id_rsa -p 2222 waldirbj@localhost"

# Update everything
alias update="sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y"
