cd /docker-entrypoint-initdb.d/

DB_USER="root"
DB_PASS="password"
DB_NAME="cakedb"
DUMP_FILE="./cakedb-dump.gz"

if [ -e ${DUMP_FILE} ]; then
  echo "import cakedb-dump.gz..."
  gzip -dc ${DUMP_FILE} | mysql -h localhost -u ${DB_USER} -p${DB_PASS} -P 3306 ${DB_NAME}
  echo "done."
fi
