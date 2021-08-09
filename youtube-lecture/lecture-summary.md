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

