# net-snmp
#
# If you use macOS and use brew, then your net-snmp
# is likely to be installed in a way that needs these:
#
#    LDFLAGS: -L/usr/local/opt/net-snmp/lib
#    CPPFLAGS: -I/usr/local/opt/net-snmp/include
#    PKG_CONFIG_PATH: /usr/local/opt/net-snmp/lib/pkgconfig
#
# If you use cross-platform net-snmp and cross-platform /etc/environment,
# such as macOS with brew, and Linux, and this specific environment file,
# then you will likely want to normalize the installation locations;
# link the macOS location to our naming-convention location like this:
#
#     mkdir /opt/net-snmp
#     ln -s /usr/local/opt/net-snmp /opt/net-snmp/current

X="/opt/net-snmp/current"

NET_SNMP_CPPFLAGS="-I$X/include"
NET_SNMP_LDFLAGS="-L$X/lib"

CPPFLAGS="$CPPFLAGS $NET_SNMP_CPPFLAGS"
LDFLAGS="$LDFLAGS $NET_SNMP_LDFLAGS"
