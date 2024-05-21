# AIFFEL Campus Code Peer Review Templete
> - 코더 : 이한나
> - 리뷰어 : 김주현
  
  
# PRT(Peer Review Template)
[X]  **1. 주어진 문제를 해결하는 완성된 코드가 제출되었나요?**
* 파일을 읽는 과정에서 사용한 파일 핸들러용 변수명과 read() 메소드 실행 후 문자열을 저장하는 변수명이 동일해 이후 전처리 작업에서 타입 에러가 발생하고 있는 상황이어서 변수명을 다르게 설정하도록 힌트를 드렸고 곧바로 수정해서 잘 처리되는 것을 확인하였습니다.
  ```
  # Avengers.txt 파일 열기
  # 피어 리뷰 시 변수명 수정
  with open("Avengers.txt", "r") as Avengers:
    AvengersOpen = Avengers.read()

  print(AvengersOpen)
  ``` 
* 단어 기준으로 잘라 튜플 형태의 바이그램을 구성해 새로운 리스트에 잘 저장되었습니다.
* 마지막 바이그램별 빈도수를 카운트하고 최대 바이그램을 찾는 코드만 작성되지 못했습니다.
  
[O]  **2. 핵심적이거나 복잡하고 이해하기 어려운 부분에 작성된 설명을 보고 해당 코드가 잘 이해되었나요?**
* 코딩에 앞서 해당 프로그램이 완성해야할 조건과 입출력 예시까지 잘 정리되어 있습니다.
* 대부분의 문장과 주요 블럭 단위로 주석이 잘 작성되어 있어 아주 수월하게 이해할 수 있습니다
  
[O]  **3. 에러가 난 부분을 디버깅하여 “문제를 해결한 기록”을 남겼나요? 또는 “새로운 시도 및 추가 실험”을 해봤나요?**
* 코랩에서 Avengers.txt 파일을 연결하는 방식을 안내 받은 구글 드라이브와의 연결 방식이 아니라 직접 코랩에 파일을 업로드해서 연결하는 방식을 고민해 보고 정보를 찾아 직접 적용하였습니다.
  ```
  # 구글 코랩에서 파일을 업로드
  from google.colab import files
  f = files.upload()
  
  # 파일명 추출
  filename = next(iter(f))
  print(filename )
  
  # Avengers.txt 파일 열기
  #피어 리뷰 시 변수명 수정
  with open("Avengers.txt", "r") as Avengers:
      AvengersOpen = Avengers.read()
  
  print(AvengersOpen)
  ```
  
[X]  **4. 회고를 잘 작성했나요?**
* 프로그램이 완성되지 못한 상태여서 회고는 미처 작성되지 못했습니다. 
  
[O]  **5. 코드가 간결하고 효율적인가요?**
* 튜플 형태의 바이그램으로 구성해 새로운 리스트에 추가하는 과정에서 '리스트 컴프리헨션'을 사용해 한 줄로 코드를 완성하였습니다.
  ```
  # 2 - gram 처리
  twoGram = [ (AvengersWord[i], AvengersWord[i + 1]) for i in range(len(AvengersWord) - 1)]
  print(twoGram)
  ```
* 그 외의 코드 역시 중복되는 부분 없이 깔끔하게 작성되었습니다.  

  
# 참고 링크 및 코드 개선
```
# 코드 리뷰 시 참고한 링크가 있다면 링크와 간략한 설명을 첨부합니다.
# 코드 리뷰를 통해 개선한 코드가 있다면 코드와 간략한 설명을 첨부합니다.
```
