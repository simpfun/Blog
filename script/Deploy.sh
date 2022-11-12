GITHUB_URL=https://oauth:${GITHUB_TOKEN}@github.com/simpfun/simpfun.github.io.git
git clone ${GITHUB_URL} temp
rm -rf temp/*
mv public/* temp
cd temp 
git config --global init.defaultBranch main
git remote add origin ${GITHUB_URL}
git branch -M main
git config --global user.name "simpfun"
git config --global user.email "2382752120@qq.com"
git add *
git commit -m "Automatic generation"
git push --set-upstream origin main