#!/bin/sh
echo 'useFlashSDK="false"にしたいモジュールのディレクトリ名を入力してください(前方一致なので"app"と入力すれば"app〇〇ディレクトリが全て変更されます")'
read inputName
echo inputName

find ./"$inputName"*/ -type f -name ".actionScriptProperties" | xargs sed -i "" -e 's/useFlashSDK="true"/useFlashSDK="false"/g'
