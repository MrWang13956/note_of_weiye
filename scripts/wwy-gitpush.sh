#!/bin/bash

echo "######first push patch to github######"
echo "eg:"
echo "git remote add origin git@github.com:MrWang13956/linux_driver_module.git"
echo "git branch -M main"
echo "git push -u origin main"



echo ""
echo "重新建立连接"
echo "git remote -v"
echo "git remote rm origin"
echo "git remote add origin git@github.com:MrWang13956/linux_driver_module.git"


remote=$(git remote)
echo "$remote"\

COM=$(git branch -a | grep "remotes*")
COMPONENT=${COM##*/}
echo "$COMPONENT"
