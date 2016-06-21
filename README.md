#clone project
-git clone https://github.com/sirensoft/yiidc  
-chmod -R 0777 yiidc   
-cd yiidc  

#INSTALL
[unix]  
-php -m | grep xdebug  
[windows]  
-php -m | findstr xdebug
[composer]  
-composer update --prefer-dist -vvv --profile  
[database]  
-yii migrate   

# get fetch
-git reset --hard HEAD  
-git pull  
