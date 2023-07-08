#!/bin/bash -eu

# root権限で実行してください

systemctl restart isuda.php.service isutar.php.service nginx.service mysql.service
echo '' > /var/log/nginx/error.log && echo '' > /var/log/nginx/access.log && echo '' > /home/isucon/.local/php/var/log/isuda.php-fpm.log && echo '' > /home/isucon/.local/php/var/log/isutar.php-fpm.log

# ベンチ実行
sudo su - l isucon
cd isucon6q/ && ./isucon6q-bench