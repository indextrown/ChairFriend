# ChairFriend
- 휠체어를 사용하는 사회적 취약 계층을 위한 정보 제공 앱

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