# 2019NHNAssignment
2019NHNAssignment
travis CI를 통해서 자동으로 통합 배포하는 과정
![travis](https://user-images.githubusercontent.com/29920013/71435943-86b1ce80-272e-11ea-88c1-c760a52b713d.PNG)

### 1.개발환경
- 자바 8+
- SpringMVC
- Tomcat8.5
- JSP
- Mybatis
- MySQL

### 2.구현스펙
- 이메일, 비밀번호, 본문을 입력 받아 디비에 추가
- 글 등록 시 현재 시각도 기록
- DB에 있는 내용을 최신 글이 맨 위에 오도록 페이징 없이 출력
- 비밀번호 입력 받아 방명록 글 수정 가능
- 수정 시 별도 테이블 컬럼에 수정 시각 기록
- 이메일이 올바른지 서버쪽 클라이언트 쪽 모두에서 체크

### 3.스펙 대로 구현한 image 첨부
 - SPEC1. 이메일, 비밀번호, 본문을 입력 받아 디비에 추가
![SPEC1](https://user-images.githubusercontent.com/29920013/71439844-70ac0a00-273e-11ea-86b0-9ee3438c387a.PNG)
- SPEC2,3글 등록 시 현재 시각도 기록, DB에 있는 내용을 최신 글이 맨 위에 오도록 페이징 없이 출력
![SPEC2,3](https://user-images.githubusercontent.com/29920013/71439845-70ac0a00-273e-11ea-9750-c0050c987bc1.PNG)
- SPEC4 비밀번호 입력 받아 방명록 글 수정 가능
![SPEC4](https://user-images.githubusercontent.com/29920013/71439847-70ac0a00-273e-11ea-8d4e-cf69348ac2fd.PNG)
- SPEC5 수정 시 별도 테이블 컬럼에 수정 시각 기록
![SPEC5](https://user-images.githubusercontent.com/29920013/71439848-7144a080-273e-11ea-89d2-9f4922d3142e.PNG)
- SPEC6 이메일이 올바른지 서버쪽 클라이언트 쪽 모두에서 체크
![SPEC6-1](https://user-images.githubusercontent.com/29920013/71439849-7144a080-273e-11ea-9eed-0e4639722c1d.PNG)
![SPEC6-2](https://user-images.githubusercontent.com/29920013/71439843-70ac0a00-273e-11ea-9d1a-5daa2be9a1bb.PNG)
