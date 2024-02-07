cd /react-app

# install dependencies
npm install
npm run build
cp -r build/* /var/www/html
npm install pm2 -g
pm2 start npm --name "react-app" -- start