🔑 **PRT(Peer Review Template)**

- [X]  **1. 주어진 문제를 해결하는 완성된 코드가 제출되었나요?**
    - 문제에서 요구하는 기능이 정상적으로 작동하는지?
    * 네, 잘 동작하는 것을 확인하였습니다.
        - 해당 조건을 만족하는 부분의 코드 및 결과물을 근거로 첨부
        ```dart
        void work_counter() {
            print("work타이머 시작합니다, $work_min초, $count회"); 

            // work 카운터 타이머
            Timer.periodic(const Duration(seconds: 1), (timer) {
            total_sec = work_min - timer.tick; // 총 시간
            minutes = total_sec ~/ 60; // 분 계산
            seconds = total_sec % 60; // 초 계산

            print('$minutes분 $seconds초'); // 분 초 출력

            if (total_sec <= 0) {  // work 타이머가 끝나면
                print('work 타이머를 종료합니다. rest 타이머를 시작합니다.'); // 안내
                timer.cancel(); // 타이머 종료 (종료하지 않으면 메모리에 계속 잡혀있다고 함.)

                count++; // 회수 증가

                if (count % 4 == 0) {
                rest_min = 15 * 60; // 4회차마다 긴 휴식
                } else {
                rest_min = 5 * 60; // 짧은 휴식 시간으로 재설정
                }

                rest_counter();  // 휴식 타이머 시작
            }
        ```
    
- [X]  **2. 핵심적이거나 복잡하고 이해하기 어려운 부분에 작성된 설명을 보고 해당 코드가 잘 이해되었나요?**
    - 해당 코드 블럭에 doc string/annotation/markdown이 달려 있는지 확인
    - 해당 코드가 무슨 기능을 하는지, 왜 그렇게 짜여진건지, 작동 메커니즘이 뭔지 기술.
    - 주석을 보고 코드 이해가 잘 되었는지 확인
        - 잘 작성되었다고 생각되는 부분을 근거로 첨부합니다.
        ```dart
        if (total_sec <= 0) {  // work 타이머가 끝나면
            print('work 타이머를 종료합니다. rest 타이머를 시작합니다.'); // 안내
            timer.cancel(); // 타이머 종료 (종료하지 않으면 메모리에 계속 잡혀있다고 함.)
        }0
        ```
        
- [X]  **3.** 에러가 난 부분을 디버깅하여 “문제를 해결한 기록”을 남겼나요? 또는
   “새로운 시도 및 추가 실험”을 해봤나요? ****
    - 문제 원인 및 해결 과정을 잘 기록하였는지 확인 또는
        * 회고를 통해 오류를 해결하는 과정이 있었다는 것을 알 수 있었습니다.
    - 문제에서 요구하는 조건에 더해 추가적으로 수행한 나만의 시도, 
    실험이 기록되어 있는지 확인
        - 잘 작성되었다고 생각되는 부분을 근거로 첨부합니다.
        
- [X]  **4. 회고를 잘 작성했나요?**
    - 프로젝트 결과물에 대해 배운점과 아쉬운점, 느낀점 등이 상세히 기록 되어 있나요?
    * 네, 회고를 잘 작성해주셨습니다. 학습에서 배운 것들을 어떻게 활용하면 좋을지에 대해 잘 작성하셨습니다.

- [X]  **5. 코드가 간결하고 효율적인가요?**
    - 코드 중복을 최소화하고 범용적으로 사용할 수 있도록 모듈화(함수화) 했는지
    * work_counter(), reset_counter()로 메서드를 나누었고, 코드가 전체적으로 가독성이 좋았습니다.
        - 잘 작성되었다고 생각되는 부분을 근거로 첨부합니다.
        ```dart
        void work_counter() {
            print("work타이머 시작합니다, $work_min초, $count회"); 

            // work 카운터 타이머
            Timer.periodic(const Duration(seconds: 1), (timer) {
            total_sec = work_min - timer.tick; // 총 시간
            minutes = total_sec ~/ 60; // 분 계산
            seconds = total_sec % 60; // 초 계산

            print('$minutes분 $seconds초'); // 분 초 출력

            if (total_sec <= 0) {  // work 타이머가 끝나면
                print('work 타이머를 종료합니다. rest 타이머를 시작합니다.'); // 안내
                timer.cancel(); // 타이머 종료 (종료하지 않으면 메모리에 계속 잡혀있다고 함.)

                count++; // 회수 증가

                if (count % 4 == 0) {
                rest_min = 15 * 60; // 4회차마다 긴 휴식
                } else {
                rest_min = 5 * 60; // 짧은 휴식 시간으로 재설정
                }

                rest_counter();  // 휴식 타이머 시작
        }
        ```