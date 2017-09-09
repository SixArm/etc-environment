# libxslt
#
# If you use macOS and use brew, then your libxslt
# is likely to be installed in a way that needs these:
#
#    LDFLAGS: -L/usr/local/opt/libxslt/lib
#    CPPFLAGS: -I/usr/local/opt/libxslt/include
#    PKG_CONFIG_PATH: /usr/local/opt/libxslt/lib/pkgconfig
#
# If you use cross-platform libxslt and cross-platform /etc/environment,
# such as macOS with brew, and Linux, and this specific environment file,
# then you will likely want to normalize the installation locations;
# link the macOS location to our naming-convention location like this:
#
#     mkdir /opt/libxslt
#     ln -s /usr/local/opt/libxslt /opt/libxslt/current

X="/opt/libxslt/current"

LIBXSLT_CPPFLAGS="-I$X/include"
LIBXSLT_LDFLAGS="-L$X/lib"
LIBXSLT_PKG_CONFIG_PATH="$X/lib/pkgconfig"

CPPFLAGS="$CPPFLAGS $LIBXSLT_CPPFLAGS"
LDFLAGS="$LDFLAGS $LIBXSLT_LDFLAGS"
PKG_CONFIG_PATH="$PKG_CONFIG_PATH:$LIBXSLT_PKG_CONFIG_PATH"
