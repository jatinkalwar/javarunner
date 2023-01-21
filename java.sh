#!bin/bash
#CODED BY THEJATINKALWAR
v="v1.0"
servo() {
wget -q --spider https://github.com/jatinkalwar

if [ $? -eq 0 ]; then
  echo ""
  wget -L https://raw.githubusercontent.com/jatinkalwar/javarunner/main/.update.txt > /dev/null 2>&1
  ver=$(cat .update.txt)
  if [[ $ver = 'v1.1' ]];
  then
  clear
  echo -e "\e[31m# \e[93m UPDATING SCRIPT \e[31m$v \e[93mTO \e[31m$ver"
  rm java.sh
  wget -L https://raw.githubusercontent.com/jatinkalwar/javarunner/main/java.sh > /dev/null 2>&1
  bash java.sh
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

FILE= java
if [ -d "$FILE" ];
then
echo ""
else
mkdir java
fi

class(){
#FILE= Test.class
if [ -f "Test.class" ]; 
then
echo -e "\e[31m           OUTPUT         \e[91m"
echo -e "\e[91m"
java Test
echo ""
echo -e "\e[31m# \e[93m JAVA RUNNER\e[93m \e[92m(\e[31m$v\e[92m)"
echo -e "\e[92m[\e[91m1\e[92m]\e[93m Edit Again\e[93m"
echo -e "\e[92m[\e[91m2\e[92m]\e[93m Save With Class Name\e[93m"
echo -e "\e[92m[\e[91m3\e[92m]\e[93m Save & exit\e[93m"
echo -e "\e[92m[\e[91m4\e[92m]\e[93m New Program\e[93m"
echo -e "\e[92m[\e[91m5\e[92m]\e[93m Exit\e[93m"
echo -ne "\e[92mSelect Option\e[0m: \e[92m"
read ch
    clear
    if [ $ch -eq 1 ];then
    rm Test.class
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
    exit
    else 
    echo -e "\e[92mWrong Option Mere Bhai"
    fi
else
sleep 10
exit 1
fi
}
check(){
FILE=Test.java
if [ -f "$FILE" ]; then
clear
javac Test.java
class
else
clear
echo ""
echo -e "   \e[31mBHAI KR KYA RAHA HAI TU... KOI FILE NAHI HAI Test.java K NAAM SE DEKH KAHI SPELLING MISTAKE HO"
fi
}
check
