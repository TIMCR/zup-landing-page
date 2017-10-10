#!/usr/bin/env bash
NODE_ENV=production
CITY_NAME=Marechal\ Cândido\ Rondon
PAGE_TITLE=VcMCR
APPLICATION_NAME=Sistema VcMCR
API_URL=http://192.168.1.34:8282
WEB_APP_LINK=http://192.168.1.33/web

git pull

rm -rf /var/www/html/bem-vindo/*

gulp

# sed -i '' "s@CITY_NAME@$CITY_NAME@g" /var/www/html/bem-vindo/index.html
#
# if [ -z "$PAGE_TITLE" ]; then
#         sed -i '' "s@PAGE_TITLE@ZUP@g" /var/www/html/bem-vindo/index.html
# else
#         sed -i '' "s@PAGE_TITLE@$PAGE_TITLE@g" /var/www/html/bem-vindo/index.html
# fi
#
# if [ -z "$APPLICATION_NAME" ]; then
#         sed -i '' "s@APPLICATION_NAME@ZUP@g" /var/www/html/bem-vindo/index.html
# else
#         sed -i '' "s@APPLICATION_NAME@$APPLICATION_NAME@g" /var/www/html/bem-vindo/index.html
# fi
#
# sed -i '' "s@API_URL@$API_URL@g" /var/www/html/bem-vindo/scripts/main.js
# if [ -z "$IOS_APP_LINK" ]; then
#         sed -i '' "s@HAS_IOS_APP_LINK@none@g" /var/www/html/bem-vindo/styles/main.css
# else
#         sed -i '' "s@IOS_APP_LINK@$IOS_APP_LINK@g" /var/www/html/bem-vindo/index.html
#         sed -i '' "s@HAS_IOS_APP_LINK@block@g" /var/www/html/bem-vindo/styles/main.css
# fi
#
# if [ -z "$ANDROID_APP_LINK" ]; then
#         sed -i '' "s@HAS_ANDROID_APP_LINK@none@g" /var/www/html/bem-vindo/styles/main.css
# else
#         sed -i '' "s@ANDROID_APP_LINK@$ANDROID_APP_LINK@g" /var/www/html/bem-vindo/index.html
#         sed -i '' "s@HAS_ANDROID_APP_LINK@block@g" /var/www/html/bem-vindo/styles/main.css
# fi
#
# if [ -z "$WEB_APP_LINK" ]; then
#         sed -i '' "s@HAS_WEB_APP_LINK@none@g" /var/www/html/bem-vindo/styles/main.css
# else
#         sed -i '' "s@WEB_APP_LINK@$WEB_APP_LINK@g" /var/www/html/bem-vindo/index.html
#         sed -i '' "s@HAS_WEB_APP_LINK@block@g" /var/www/html/bem-vindo/styles/main.css
# fi
#
# [ -f terms.html ] && TERMS_AND_CONDITIONS_HTML=`cat terms.html`
#
# if [ -z "$TERMS_AND_CONDITIONS_HTML" ]; then
#         sed -i '' "s@HAS_TERMS_AND_CONDITIONS@none@g" /var/www/html/bem-vindo/styles/main.css
# else
#         perl -i -pe "s@TERMS_AND_CONDITIONS_HTML@$TERMS_AND_CONDITIONS_HTML@g" /var/www/html/bem-vindo/index.html
#         sed -i '' "s@HAS_TERMS_AND_CONDITIONS@block@g" /var/www/html/bem-vindo/styles/main.css
# fi
