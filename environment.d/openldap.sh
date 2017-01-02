# openldap
#
# If you use macOS and use brew, then your openldap
# is likely to be installed in a way that needs these:
#
#    LDFLAGS: -L/usr/local/opt/openldap/lib
#    CPPFLAGS: -I/usr/local/opt/openldap/include
#    PKG_CONFIG_PATH: /usr/local/opt/openldap/lib/pkgconfig
#
# If you use cross-platform openldap and cross-platform /etc/environment,
# such as macOS with brew, and Linux, and this specific environment file,
# then you will likely want to normalize the installation locations;
# link the macOS location to our naming-convention location like this:
#
#     mkdir /opt/openldap
#     ln -s /usr/local/opt/openldap /opt/openldap/current

X="/opt/openldap/current"

OPENLDAP_CPPFLAGS="-I$X/include"
OPENLDAP_LDFLAGS="-L$X/lib"

CPPFLAGS="$CPPFLAGS $OPENLDAP_CPPFLAGS"
LDFLAGS="$LDFLAGS $OPENLDAP_LDFLAGS"
