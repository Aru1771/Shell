#!/bin/bash

# print even numbers in the range

#for i in {1..20}
#do
#	if [ $((i % 2)) -eq 1 ];
#	then
#		echo "$i"
#	fi
#done

##########################################################################################
# the below code will take 5 inputs from the user and print only >50 numbers
#


greaterthan_values=()
# in this empty arry we will store the values greater then 50

#for i in {1..5}
#do
#	read -p "Enter Number: " i
#
#	if [ $i -gt 50 ]; then
#		greaterthan_values+=($i)
#in the above command we will store i values greater then 50 in the array
#	fi	
#done

#echo "Number is Gt:"
#echo "${greaterthan_values[@]}"

###############################################################################################
# the below code will only print the name which have more than 5 charecters


#words=("aravind" "balu" "sai" "nikhil")

#for i in "${words[@]}"   
#do
#	len=${#i}
#	if [ $len -gt 5 ]; then
#		echo "$i"
#	fi
#done

##################################################################################################
#the below code filters the .txt files which are more than 1KB
#
big_file=()

#for i in *.txt
#do
#	size=$(stat -c %s $i) #it will give only file size in bytes eg:5090 bytes
#	if [ $size -gt 1240 ]; then
#		big_file+=($i)
#	fi
#done
#
#echo "big files: "
#echo "${big_file[@]}"

#####################################################################################################
# the below code gives the below mentioned serviecs running or not
#
#services=("docker" "httpd" "jenkins")

#for i in "${services[@]}"
#do
#	systemctl is-active --quiet "$i"
#
#	if [ $? -eq 0 ];then
#		echo "$i is running"
#	fi
#done
########################################################################################################

# below command give the list of files which are modified less than 24 hours
#
# find /var/log -type f -mtime -1
#########################################################################################################333
#below code takes 10 inputs and print only even numbers


#count=1
#
#even_num=()

#while [ $count -le 10 ]
#do
#	read -p "enter the number: " num

#	if [ $((num % 2)) -eq 0 ]; then
#		even_num+=($num)
#	fi

#	count=$((count+1))
#done

#echo "even numbers: "
#echo "${even_num[@]}"

#####################################################################################################################
#the below code will check the servers are running or not and give the out put logs in the file formate
#
#
#services=("1.1.1.1" "8.8.8.8")
#file_name="servers_status$(date '+%y-%m-%d_%H-%M-%S')"
#for i in "${services[@]}"
#do
#	ping -c 2 $i &>>"$file_name"

#        if [ $? -eq 0 ]; then
#		echo "$i is up" >>"$file_name"
#	else
#		echo "$i is down" >>"$file_name"
#	
#	fi
#done
#############################################################################################################

#services=("nginx" "docker" "jenkins")

#for i in "${services[@]}"
#do
#	systemctl is-active --quiet "$i"
#
#	if [ $? -eq 0 ]; then
#		echo "$i is running"
#	else
#		echo "$i need restart"
#	fi
#done
############################################################################################################
# the below code check the every log file in /var/log folder and prints if that logfile have error messages
#for i in /var/log/*.log
#do
#	if grep "error" "$i"; then
#		echo "print $i"
#       fi
#done
###############################################################################################################################
#the below script check how many variablrs we are passing at run time if we are passing less than 2 variables it will give error
#set -euo pipefail

#if [ $# -lt 2 ]; then
#	echo "error"
#	exit 1
#fi

#APP_NAME="$1"
#APP_ENV="$2"

#echo "$APP_NAME is running on $APP_ENV"

#########################################################################################################################################

#read -p "Enter the service name: " service

#systemctl is-active --quiet $service
#
#if [ $? -eq 0 ]; then
#	echo "$service is running"
#else
#	echo "$service is stopped"
#fi
##########################################################################################################################
# this scripty will check the input is file or folder and tell us and if the file and folder not available it will tell 
#file="$1"

#if [ -f "$file" ]; then
#	
#       echo "this is a file"
#elif [ -d "$file" ]; then
#        echo "this is folder"
#else
#        echo  "there is no file or folder exist"
#fi

#Test	Meaning
#-f	regular file
#-d	directory
#-e	exists
#-s	not empty
#-r	readable
#-w	writable
#-x	executable
#-L	symlink
#-O	owner
#-nt	newer
#-ot	older

##########################################################################################################################
#this script will check softwates are installed or not

#read -p "Enter service name: " service

#if  command -v "$service" >/dev/null 2>&1 ; then
#	echo "installed"
#else
#	echo "not-installed"
#fi
#######################################################################################
# below script gives script name count of variables and print all the variables seperatly
#set -euo pipefail

#echo "Script name: $0"
#echo "Args count: $#"
#echo "Args: $@"

########################################################################################
#the below  script exit if we miss the variables at the run time 
#set -euo pipefail
#
#if [ $# -lt 2 ]; then
#	echo "error"
#	exit 1
#fi

#ENV="$1"
#APP_NAME="$2"

#echo "$ENV"
#echo "$APP_NAME"


#################################################################################
# the script check the input and tell what it is
#read -p "Enter file name: " file

#if [ -f $file ]; then
#	echo "its a file"
#elif [ -d $file ]; then
#	echo "its folder"
#else
#	echo "file not exist"
#fi

###################################################################
# the code checks the tool commands are working or not

#!/bin/bash
#set -euo pipefail

#tools=("docker" "git" "jenkins" "minikube")

#for tool in "${tools[@]}"; do
#   if command -v "$tool" >/dev/null 2>&1; then
#        echo "✅ $tool is installed"
#   else
#       echo "❌ $tool is NOT installed"
#       exit 1
#   fi
#done

#echo "All required tools are installed"
####################################################################
#Read Multiple Servers & Check Connectivity

#!/bin/bash
set -euo pipefail

# List of servers
servers=("8.8.8.8" "1.1.1.1" "192.168.1.100")

# Output file with timestamp
log_file="ping_status_$(date '+%Y-%m-%d_%H-%M-%S').log"

echo "Ping check started at $(date)" | tee -a "$log_file"
echo "---------------------------------" | tee -a "$log_file"

for server in "${servers[@]}"; do
    if ping -c 2 "$server" &>/dev/null; then
        echo "✅ $server is UP" | tee -a "$log_file"
    else
        echo "❌ $server is DOWN" | tee -a "$log_file"
    fi
done

echo "---------------------------------" | tee -a "$log_file"
echo "Ping check completed" | tee -a "$log_file"

########################################################################
#Pre-Deployment Validation Script

#!/bin/bash
set -euo pipefail

echo "🔍 Starting pre-deployment validation..."

# -------------------------------
# 1️⃣ Check required commands
# -------------------------------
REQUIRED_CMDS=("docker" "kubectl" "git")

for cmd in "${REQUIRED_CMDS[@]}"; do
    if command -v "$cmd" >/dev/null 2>&1; then
        echo "✅ Command found: $cmd"
    else
        echo "❌ Missing required command: $cmd"
        exit 1
    fi
done

# -------------------------------
# 2️⃣ Check required ENV variables
# -------------------------------
REQUIRED_ENVS=("APP_ENV" "IMAGE_TAG")

for var in "${REQUIRED_ENVS[@]}"; do
    if [ -z "${!var:-}" ]; then
        echo "❌ Environment variable $var is NOT set"
        exit 1
    else
        echo "✅ $var=${!var}"
    fi
done

# -------------------------------
# 3️⃣ Disk usage check
# -------------------------------
DISK_USED=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$DISK_USED" -gt 80 ]; then
    echo "❌ Disk usage too high: ${DISK_USED}%"
    exit 1
else
    echo "✅ Disk usage OK: ${DISK_USED}%"
fi

# -------------------------------
# 4️⃣ Memory usage check
# -------------------------------
MEM_USED=$(free | awk '/Mem:/ {printf("%.0f", $3/$2 * 100)}')

if [ "$MEM_USED" -gt 75 ]; then
    echo "❌ Memory usage too high: ${MEM_USED}%"
    exit 1
else
    echo "✅ Memory usage OK: ${MEM_USED}%"
fi

# -------------------------------
# Final status
# -------------------------------
echo "🚀 Ready for deployment"
#######################################################################################################
#!/bin/bash
set -euo pipefail

REPORT_FILE="k8s_node_report_$(date '+%Y-%m-%d_%H-%M-%S').log"

echo "Kubernetes Node Health Report" | tee "$REPORT_FILE"
echo "-----------------------------" | tee -a "$REPORT_FILE"

NOT_READY=$(kubectl get nodes --no-headers | awk '$2 != "Ready" {print $1}')
READY=$(kubectl get nodes --no-headers | awk '$2 == "Ready" {print $1}')

if [ -n "$READY" ]; then
    echo "✅ Ready Nodes:" | tee -a "$REPORT_FILE"
    echo "$READY" | tee -a "$REPORT_FILE"
fi

if [ -n "$NOT_READY" ]; then
    echo "❌ Not Ready Nodes:" | tee -a "$REPORT_FILE"
    echo "$NOT_READY" | tee -a "$REPORT_FILE"
    exit 1
else
    echo "✅ All nodes are Ready" | tee -a "$REPORT_FILE"
fi

echo "Report saved to $REPORT_FILE"
====================================================================================================================================================================

#upload jenkins logs to s3 bucket


“The Jenkins EC2 instance had an IAM role attached with S3 PutObject permissions. When the AWS CLI command executed,
it automatically used temporary credentials provided through the EC2 instance metadata service to authenticate 
with AWS and upload the backup file to the S3 bucket.”



#!/bin/bash

DATE=$(date +%Y-%m-%d-%H-%M)

BACKUP_FILE=jenkins-logs-$DATE.zip

cd /var/log/

zip -r /tmp/$BACKUP_FILE jenkins

aws s3 cp /tmp/$BACKUP_FILE s3://jenkins-log-backup-prod/

rm -f /tmp/$BACKUP_FILE






















