# SQLite database
#
# If you use macOS and use brew, then your sqlite
# is likely to be installed in a way that needs these:
#
#    LDFLAGS: -L/usr/local/opt/sqlite/lib
#    CPPFLAGS: -I/usr/local/opt/sqlite/include
#    PKG_CONFIG_PATH: /usr/local/opt/sqlite/lib/pkgconfig
#
# If you use cross-platform sqlite and cross-platform /etc/environment,
# such as macOS with brew, and Linux, and this specific environment file,
# then you will likely want to normalize the installation locations;
# link the macOS location to our naming-convention location like this:
#
#     mkdir /opt/sqlite
#     ln -s /usr/local/opt/sqlite /opt/sqlite/current

OPT="$OPT:/opt/sqlite/current/bin"

SQLITE_CPPFLAGS="-I/usr/local/opt/sqlite/include"
SQLITE_LD_LIBRARY_PATH="/opt/sqlite/current/lib"
SQLITE_LD_RUN_PATH="/opt/sqlite/current/lib"
SQLITE_LDFLAGS="-L/opt/sqlite/current/lib"
SQLITE_PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig"

CPPFLAGS="$CPPFLAGS $SQLITE_CPPFLAGS"
LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$SQLITE_LDFLAGS"
LD_RUN_PATH="$LD_RUN_PATH:$SQLITE_LD_RUN_PATH"
LDFLAGS="$LDFLAGS $SQLITE_LDFLAGS"
PKG_CONFIG_PATH="$PKG_CONFIG_PATH:$SQLITE_PKG_CONFIG_PATH"
