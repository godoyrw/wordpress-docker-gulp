docker exec wp-db bash -c 'mysqldump -u$WORDPRESS_DB_USER -p$WORDPRESS_DB_PASSWORD $WORDPRESS_DB_NAME > /build/sql/db.sql; exit';
docker exec wp bash -c 'rsync -av --exclude='node_modules' --exclude='gulpfile.js' --exclude='package.json' /var/www/html/ /build/html;  exit'