chmod +x .
for i in 123
do
  curl -u $1 https://api.github.com/user/repos -d "{\"name\":\"nctuLab$i\"}"
done
mkdir temp
cd temp
git clone https://github.com/nctucn/lab1-SamsonChoo
cd lab1-SamsonChoo
git remote set-url origin https://github.com/SamsonChoo/nctuLab1
git add .
git commit -am "transferred my Networks lab from private repository"
git push
cd ..
git clone https://github.com/nctucn/lab2-SamsonChoo
cd lab2-SamsonChoo
git remote set-url origin https://github.com/SamsonChoo/nctuLab2
git add .
git commit -am "transferred my Networks lab from private repository"
git push
cd ..
git clone https://github.com/nctucn/lab3-SamsonChoo
cd lab3-SamsonChoo
git remote set-url origin https://github.com/SamsonChoo/nctuLab3
git add .
git commit -am "transferred my Networks lab from private repository"
git push
cd ../..
rm -rf temp
