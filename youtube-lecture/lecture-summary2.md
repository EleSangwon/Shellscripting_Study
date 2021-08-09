## printf 
```
printf "Name: %s\tScore: %i\n" SANGWON 100

today=`date +%Y%m%d`
printf "Today is %s\n" $today

printf "|%10s|%10s|%10.2f|\n" ubuntu sangwon 100
| | 사이에 10개의 문자공간 확보해서 오른쪽 정렬

printf "|%-10s|%-10s|%10.2f|\n" ubuntu sangwon 100
| | 사이에 10개의 문자공간 확보해서 왼쪽 정렬
```
![캡처10](https://user-images.githubusercontent.com/50174803/128688259-6117a417-c958-4383-a38d-a1418a58a34b.jpg)

## exam7.sh
```
#!/bin/bash
#: Usage : exam7.sh
echo -n "Input diretory name :"; read dirname
echo "===================="
date +%Y-%m-%d
echo "===================="
du -sh $dirname 2> /dev/null
echo
```
![캡처11](https://user-images.githubusercontent.com/50174803/128688682-7b4c57f1-c67f-4272-83d0-f663d12094a5.jpg)

## exam8.sh
```
#!/bin/bash
# Usage : exam8.sh
echo -n "Input directory name: "; read dirname
ls $dirname > /tmp/$(date +%Y-%m-%d).txt
cat /tmp/$(date +%Y-%m-%d).txt
check=`cat -n /tmp/$(date +%Y-%m-%d).txt | wc -l`
echo "total $dirname numbers : $check"
echo "If u check disk usage(y/n)?"; read answer
if [ $answer == y ]; then
        du -sh $dirname 2> /dev/null
        echo
elif [ $answer == n ]; then
        echo "nothing to show"
else
        echo "Wrong Input"
fi
```
![캡처12](https://user-images.githubusercontent.com/50174803/128691194-ebb10354-5220-4036-a843-e6f0ebbb20a0.jpg)

## exit 코드
```
date > /dev/null
echo $?

--> 0

data 2> /dev/null
echo $?

--> 127

exit 코드
0 : 프로그램 또는 명령이 성공으로 종료
1 - 255 : 프로그램 또는 명령이 실패로 종료
1 : 일반 에러
2 : syntax error
126 : 명령을 실행할 수 없음
127 : 명령(파일)이 존재하지 않음
128+N : 종료시그널 + N(kill -9 PID 종료 시 128+9=137)

echo $? : 종료값 출력
```

## 비교 연산자
```
x=10
test $x -lt 5
echo $?

x=10
test $x -gt 5
echo $?

/etc/passwd 라는 파일이 존재?
test -e /etc/passwd

tmp가 디렉토리 ?
test -d /tmp

tmp가 파일 ?
test -f /tmp 
```
![캡처13](https://user-images.githubusercontent.com/50174803/128691810-b8d49b87-03d3-4621-814d-f2d451c3223f.jpg)

## exam9.sh
```
#!/bin/bash
echo -n "What do u want (yes/no)?"
read answer
case $answer in
        [yY]es) echo "System Restart";;
        [nN]o) echo "Shutdown the system";;
        *) echo "entered incorretly";;
esac
```
![캡처14](https://user-images.githubusercontent.com/50174803/128693051-4a5a91d8-3c6f-4125-b8b0-0499698b3db7.jpg)

## exam10.sh - case 
```
#!/bin/bash
cat << END
==========================
Please select a number
--------------------------
1 : Check disk Usage
2 : Check the login user list
--------------------------
END
echo -n "number :"; read number
case $number in
        1) df -h | head -3;;
        2) whoami;;
        *) echo "Bad Choice"
                exit 1
esac
exit 0
```
![캡처15](https://user-images.githubusercontent.com/50174803/128693379-d6928768-7ff4-40e9-8c1f-b95b35a7499e.jpg)

## exam11.sh -if 
```
#!/bin/bash
echo -n "Input a directory name :"; read answer
if [ -d $answer ]; then
        ls $answer > /tmp/$(date +%Y-%m-%d)
        cat /tmp/$(date +%Y-%m-%d)
        exit 0
else
        echo "It's not a directory"
        exit 1
fi
```
![캡처16](https://user-images.githubusercontent.com/50174803/128693726-b6da173e-f02a-47ac-8a01-95383932736a.jpg)

## exam12.sh - while, until
```
#!/bin/bash
num=1
while [ $num -le 5 ]
do
        echo "Number :$num"
        (( num++ ))
done
echo "== While exit =="
a=1
until [ $a -gt 5 ]
do
        echo "Number :$a"
        (( a++ ))
done
echo "== Until exit =="
```
![캡처17](https://user-images.githubusercontent.com/50174803/128694115-6b0fe48e-8245-494a-a46a-2bc8143b3e58.jpg)

## exam13.sh
```
#!/bin/bash
cat << END
Description: Create a User Account
Author: "sangwon lee" <lee2155507@gmail.com>
END
echo -n "New Username: "; read username
while getent passwd $username &> /dev/null
do
        echo "Sorry. That account $username is already taken.
        Please pick a different username"
        echo -n "New Username :"
        read username
done
sudo useradd -m -s /bin/bash $username
```
![캡처18](https://user-images.githubusercontent.com/50174803/128695051-cd4811cd-f01b-41cf-9f9e-900efbfce0ea.jpg)


## exam14.sh
```
#!/bin/bash
num=0
while [ $num -lt 5 ]
do
        echo "Number : $num"
        (( num++ ))
        if [ $num == 2 ]; then
                break
        fi
done
```

![캡처19](https://user-images.githubusercontent.com/50174803/128695297-f73e775b-a795-4b59-a5c6-bc2d2dd2e499.jpg)




















