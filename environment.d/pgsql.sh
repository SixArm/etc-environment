# Postgresql

LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/pgsql/lib"
LD_RUN_PATH="$LD_RUN_PATH:/usr/local/pgsql/lib"
LDFLAGS="-L/usr/local/pgsql/lib $LDFLAGS"
