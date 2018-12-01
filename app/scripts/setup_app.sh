#!/bin/bash

echo "[setup_app] start"

#sudo sed -i -e "s|set_time_limit(0);|//set_time_limit(0);|" \
#    /var/www/html/vendor/cakephp/cakephp/src/Http/Response.php

ENV_FILE="/var/www/html/config/.env"

if [ ! -e ${ENV_FILE} ]; then
  touch ${ENV_FILE}
  echo "export APP_NAME=\""${APP_NAME}"\"" >> ${ENV_FILE}
  echo "export DEBUG=\""${DEBUG}"\"" >> ${ENV_FILE}
  echo "export APP_ENCODING=\""${APP_ENCODING}"\"" >> ${ENV_FILE}
  echo "export APP_DEFAULT_LOCALE=\""${APP_DEFAULT_LOCALE}"\"" >> ${ENV_FILE}
  echo "export APP_DEFAULT_TIMEZONE=\""${APP_DEFAULT_TIMEZONE}"\"" >> ${ENV_FILE}
  echo "export SECURITY_SALT=\""${SECURITY_SALT}"\"" >> ${ENV_FILE}
  echo "export DB_HOST=\""${DB_HOST}"\"" >> ${ENV_FILE}
  echo "export DB_NAME=\""${DB_NAME}"\"" >> ${ENV_FILE}
  echo "export DB_USER=\""${DB_USER}"\"" >> ${ENV_FILE}
  echo "export DB_PASS=\""${DB_PASS}"\"" >> ${ENV_FILE}
  echo "export DB_ENCODING=\""${DB_ENCODING}"\"" >> ${ENV_FILE}
  echo "export DB_TIMEZONE=\""${DB_TIMEZONE}"\"" >> ${ENV_FILE}
fi

echo "[setup_app] finish"

# run the command given as arguments from CMD
exec "$@"
