chmod +x .
for i in 123
do
curl -u $1 https://api.github.com/user/repos -d "{\"name\":\"nctuLab$i\"}"
mkdir temp
cd temp
lab = "https://github.com/nctucn/lab$i-$1"
git clone $lab
folder = "lab$i-$1"
cd $folder
git remote set-url origin https://github.com/$1/nctuLab$i
git add .
git commit -am "transferred my Networks lab from private repository"
git push
cd ..
done
cd ..
rm -rf temp
