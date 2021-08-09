# Youtube 따배셀 정리


## 싱글 쿼테이션과 더블 쿼테이션의 차이 
```
echo 'Today is date'

echo 'Today is $(date)'

echo "Today is $(date)"

touch report-$(date +%Y-%m-%d)_v1.txt
```

## alias
```
터미널 창에서 c 입력하면 clear 입력하는 것과 같다.
alias c=clear

등록해둔 별칭 삭제
unalias c 

현재 창에서만 가능하므로 다른 창 or 나갔다 접속해도 
사용하고 싶다면 홈디렉토리에서 .bashrc 에 등록해야 한다.

```

## Communicatin channels
```
STDIN : 입력을 키보드가 아닌 파일을 통해 받음
STDOUT: 표준 출력을 터미널이 아닌 파일로 출력
STDERR: 표준 에러 출력을 터미널이 아닌 파일로 출력 

date의 결과를 date.out에 저장한다.
date > date.out

date >> date.out
기존 정보에 추가로 append 한다.

현재 디렉토리에 a.txt가 없는 경우
ls a.txt 는 에러 메세지가 뜬다.

이를 ls a.txt 2>error.txt 를 이용해
error.txt에 에러 내용을 파일로 받도록 할 수 있다.
```
![캡처1](https://user-images.githubusercontent.com/50174803/128683592-fcc88bd2-d430-472d-a5ac-4235e2396fa0.jpg)

## Pipeline
```
명령의 실행 결과를 다음 명령의 입력으로 전달

ls -l | wc -l

ls -l | grep k | wc -l
```
![캡처2](https://user-images.githubusercontent.com/50174803/128683806-b103cfa6-46be-44f2-9227-7c265f373320.jpg)

## exam1.sh
```
#!/bin/bash
echo "================="
date +%Y-%m-%d
echo "================="
df -h
```
![캡처3](https://user-images.githubusercontent.com/50174803/128684181-6ae501b9-0a24-48e4-b223-0b345b45faa6.jpg)

## exam2.sh
```
#!/bin/bash
#: Author      : "sangwon lee" <lee2155507@gmail.com>
#: Description : print list current directory
ls > /tmp/$(date +%Y-%m-%d).txt
cat /tmp/$(date +%Y-%m-%d).txt
```
![캡처4](https://user-images.githubusercontent.com/50174803/128684593-1b8449f0-9b34-4c4e-9106-06cfaedd1bf3.jpg)

## exam3.sh 
```
#!/bin/bash
#: Author      : "sangwon lee"
#: Description : Print /var directory Usage
echo "[ /var directory ]"
echo "==================="
date +%Y-%m-%d
echo "==================="
du -sh /var 2> /dev/null
echo
```
![캡처5](https://user-images.githubusercontent.com/50174803/128684909-9c749a6d-b944-4230-acd1-264a2c9ffed3.jpg)

## exam4.sh - parameter
```
#!/bin/bash
# Usage : exam3.sh arg1 arg2 arg3
echo "The Script name    : $0"
echo "The First Args     : $1"
echo "The Second Args    : $2"
echo "The Third Args     : $3"
echo "The number of Args : $#"
echo "The list of Args   : $@"
echo "The list of Args   : $*"
```
![캡처6](https://user-images.githubusercontent.com/50174803/128685378-8defc7c6-c678-44d9-8788-78e413e692cc.jpg)
