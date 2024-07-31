# ChairFriend
- 휠체어를 사용하는 사회적 취약 계층을 위한 정보 제공 앱



<table>
    <tr>
        <td align="center">
            <img src="https://github.com/user-attachments/assets/08aa3795-94b6-4ab8-8f07-090dc86b18b7" alt="Simulator Screen Recording - iPhone 15 Pro Max - 2024-07-12 at 20 07 43" style="width: 200px;">
            <br>
            <figcaption>iOS</figcaption>
        </td>
        <td align="center">
            <img src="" alt="Simulator Screen Recording - iPhone 15 Pro Max - 2024-07-12 at 17 58 27" style="width: 200px;">
            <br>
            <figcaption>Android</figcaption>
        </td>
    </tr>
</table>  



<!-- "https://github.com/user-attachments/assets/d7a068e8-2e28-4325-b6b5-ac81f3b2bb0c" -- >
<!-- <img src="https://github.com/user-attachments/assets/34f45dcd-fa51-4170-9d1a-cb0220105eba" alt="Simulator Screen Recording - iPhone 15 Pro Max - 2024-07-12 at 20 07 43" style="width: 200px;"> -->

## ⏲️ 개발 기간 
- 2024.06.25 ~ 

## 🧑‍🤝‍🧑 개발자 소개 
- **김동현** : iOS 개발, Server 구축
- **전지훈** : Android 개발
- **이준태** : Android 개발
- **이진혁** : Android 개발
  

## ⚙️ 기술 스택
<!-- - **Server** : AWS EC2
- **Crawling** : Python
- **자연어 처리** : OpenAI
- **DB** : Mysql
- **Web** : Spring Boot -->
- **아이디어 회의** : Discord, Github



<!-- git init
git remote add origin https://github.com/indextrown/ChairFriend.git
git config core.sparseCheckout true -->

#### android pull
```bash
git init ChairFriend
cd ChairFriend
git remote add origin https://github.com/indextrown/ChairFriend.git
git config core.sparseCheckout true
echo "Android/*" >> .git/info/sparse-checkout
git pull origin main
```


#### android push
```bash
git add Android/* 
git commit -m "Update Android folder"
git push origin main
```

#### branch
```bash
git clone https://github.com/indextrown/ChairFriend.git 브랜치명
git checkout -b '브랜치명'  // 이건 최초 한번만
git add .
git commit -m "브랜치명: 하고싶은말"
git push origin 브랜치명
```

#### 항상 코드를 업로드 하기 전에 main 코드랑 동기화 필요
``` bash
//  코드 정리
git add .
git commit -m "하고싶은말"
// main코드로부터 새로운 코드를 받아온다
git pull origin main
git push origin 자기브랜치명
```

#### 에러 발생시 
``` bash
git pull origin 자기브랜치명 --rebase
```

#### 에러 관련 링크
https://stackoverflow.com/questions/34118404/what-i-can-do-to-resolve-1-commit-behind-master



