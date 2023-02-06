#!bin/bash
#CODED BY THEJATINKALWAR
#-----------------------------Version Intial.----------------------------
v="v1.1"  #current version
ve="v1.2" #next version
#----------------------------remove directory if exists-------------------
if [ -d javarunner ]; then
rm -rf javarunner
fi 
#---------------------------remove patch file if exist---------------------
if [ -f .update.txt ]; then
rm .update.txt
fi 
if [ -f .msg.txt ]; then
rm .msg.txt
fi
servo() {
#--------------------------checking internet connection---------------------------
wget -q --spider https://github.com/jatinkalwar
if [ $? -eq 0 ]; then
  git clone https://github.com/jatinkalwar/javarunner > /dev/null 2>&1
  mv javarunner/.msg.txt .
  mv javarunner/.update.txt .
  #wget -L https://raw.githubusercontent.com/jatinkalwar/javarunner/main/.update.txt > /dev/null 2>&1
  #wget -L https://raw.githubusercontent.com/jatinkalwar/javarunner/main/.msg.txt > /dev/null 2>&1
  ver=$(cat .update.txt)
#--------------------------check update------------------------------------
  if [[ $ver = $ve ]];
  then
  clear
#--------------------------update code------------------------------------ 
  echo -e "\e[31m# \e[93m UPDATING SCRIPT \e[31m$v \e[93mTO \e[31m$ver"
 upd(){
  rm java.sh
  #wget -L https://raw.githubusercontent.com/jatinkalwar/javarunner/main/java.sh > /dev/null 2>&1
  mv javarunner/java.sh .
  bash java.sh
  }
  upd
  else
  echo ""
  fi
  rm .update.txt
else
clear
   echo -e "\e[91m       You Are Not Connected To Internet!!!!"
echo ""
exit
fi
}
servo
#----------------------------------make java directory if doesn't exist-------------------------
FILE= java
if [ -d "$FILE" ];
then
echo ""
else
mkdir java
fi
class(){
mug=$(cat .msg.txt)
#---------------------------reading message from server if available-----------------------
if [[ $mug = 'No' ]];
then
ac=$(head --bytes 7 Test.java)
if [[ $ac = 'package' ]]; then
clear
echo " "
echo -ne "\e[31mPlease Enter the package name:- "
read inpu
clear
echo -e "     \e[31m         By \e[92mtheJatinKalwar    "
echo -e "\e[93m"
javac -d . Test.java
echo -e "\e[31m                 OUTPUT              "
echo -e "\e[91m"
java $inpu.Test
else
javac Test.java
echo -e "\e[31m                 OUTPUT              "
echo -e "\e[91m"
java Test
fi
else 
echo -e "\e[31m                 OUTPUT              "
echo -e "\e[91m"
figlet $mug | lolcat
rm .msg.txt
fi
echo ""
echo -e "\e[31m# \e[93m JAVA RUNNER\e[93m \e[92m(\e[31m$v\e[92m)"
echo -e "\e[92m[\e[91m1\e[92m]\e[93m Edit Again\e[93m"
echo -e "\e[92m[\e[91m2\e[92m]\e[93m Save With Class Name\e[93m"
echo -e "\e[92m[\e[91m3\e[92m]\e[93m Save & exit\e[93m"
echo -e "\e[92m[\e[91m4\e[92m]\e[93m New Program\e[93m"
echo -e "\e[92m[\e[91m5\e[92m]\e[93m Re-run\e[93m"
echo -e "\e[92m[\e[91m6\e[92m]\e[93m Update\e[93m"
echo -e "\e[92m[\e[91m7\e[92m]\e[93m Exit\e[93m"
echo -ne "\e[92mSelect Option\e[0m: \e[92m"
read ch
    clear
    if [ -d mypack ] ; then
    rm -rf mypack
    fi
    if [ $ch -eq 1 ];then
    nano Test.java
    elif [ $ch -eq 2 ]; then
    reload(){
    clear
    echo ""
    echo -e "\e[31mPLEASE ENTER MAIN CLASS NAME AND MAIN CLASS NAME SHOULD BE START FROM CAPITAL LETTER"
    echo ""
    echo -ne "\e[92mEnter Class Name\e[0m: \e[92m"
    read kali
    echo -e "\e[31m1 \e[92mFor Confirm \e[31m2 \e[92mFor Cancel \e[31m0 \e[92mFor Exit\e[0m: \e[92m"
    read chh
    if [ $chh -eq 1 ];then
    sed -i s/Test/$kali/g Test.java
    mv Test.java $kali.java
    mv $kali.java java
    elif [ $chh -eq 2 ]; then
    clear
    reload
    elif [ $chh -eq 3 ]; then
    java Test
    else
   echo -e "\e[92mWrong Option Mere Bhai"
    fi
    }
    reload
    elif [ $ch -eq 3 ]; then
    jelly=$(cat java/save.txt)
	jelly=$((jelly+1))
    rm java/save.txt
    echo $jelly >> java/save.txt
    name=$(cat java/save.txt)
	rm Test.class
    mv Test.java $name.java
    mv $name.java java
	exit 
    elif [ $ch -eq 4 ];then
    jelly=$(cat java/save.txt)
    jelly=$((jelly+1))
    rm java/save.txt
    echo $jelly >> java/save.txt
    name=$(cat java/save.txt)
    #rm Test.class
    mv Test.java $name.java
    mv $name.java java
    #rm /home/jatin/Test.class
    mv Test.java $name.java
    mv $name.java java
    nano Test.java
    elif [ $ch -eq 5 ];then
    bash java.sh
    elif [ $ch -eq 6 ];then
    upd
    elif [ $ch -eq 7 ];then
    exit
    else 
    echo -e "\e[92mWrong Option Mere Bhai"
    fi
}
check(){
FILE=Test.java
if [ -f "$FILE" ]; then
clear
echo -e "     \e[31m         By \e[92mtheJatinKalwar    "
echo -e "\e[93m"
class
else
clear
echo ""
echo -e "   \e[31mBHAI KR KYA RAHA HAI TU... KOI FILE NAHI HAI Test.java K NAAM SE DEKH KAHI SPELLING MISTAKE HO"
fi
}
check
