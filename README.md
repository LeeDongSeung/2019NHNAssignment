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
