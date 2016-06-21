#setup
-git clone https://github.com/sirensoft/yiidc 
-chmod -R 0777 yiidc   
-cd yiidc
-yii migrate   

[unix]  
-php -m | grep xdebug  
[windows]  
-php -m | findstr xdebug  
-composer update --prefer-dist -vvv --profile  

# get fetch
-git reset --hard HEAD  
-git pull  
