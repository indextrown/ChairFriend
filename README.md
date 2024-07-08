# ChairFriend

<!-- git init
git remote add origin https://github.com/indextrown/ChairFriend.git
git config core.sparseCheckout true -->

#### android push
```bash
git init ChairFriend
cd ChairFriend
git remote add origin https://github.com/indextrown/ChairFriend.git
git config core.sparseCheckout true
echo "Android/*" >> .git/info/sparse-checkout
git pull origin main
```


#### android pull
```bash
git add Android/* 
git commit -m "Update Android folder"
git push origin main
```

###
test.ljt
나야나 나야나 헤이 안녕