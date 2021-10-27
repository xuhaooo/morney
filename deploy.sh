#!/usr/bin/env sh

# 当发生错误时中止脚本
set -e

rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m deploy &&

# 部署到 GitHub
git remote add origin git@github.com:xuhaooo/morney-website.git &&
git push -u -f origin master &&

# 部署到码云
git remote add gitee git@gitee.com:bingoxuhao/morney-website.git &&
git push -f gitee master &&

cd -
echo https://bingoxuhao.gitee.io/morney-website
echo https://xuhaooo.github.io/morney-website/index.html