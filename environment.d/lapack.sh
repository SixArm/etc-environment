# lapack
#
# If you use macOS and use brew, then your lapack
# is likely to be installed in a way that needs these:
#
#    LDFLAGS: -L/usr/local/opt/lapack/lib
#    CPPFLAGS: -I/usr/local/opt/lapack/include
#    PKG_CONFIG_PATH: /usr/local/opt/lapack/lib/pkgconfig
#
# If you use cross-platform lapack and cross-platform /etc/environment,
# such as macOS with brew, and Linux, and this specific environment file,
# then you will likely want to normalize the installation locations;
# link the macOS location to our naming-convention location like this:
#
#     mkdir /opt/lapack
#     ln -s /usr/local/opt/lapack /opt/lapack/current

X="/opt/lapack/current"
OPT="$OPT:$X/bin"

LAPACK_CPPFLAGS="-I$X/include"
LAPACK_LDFLAGS="-L/$X/lib"
LAPACK_PKG_CONFIG_PATH="$X/lib/pkgconfig"

CPPFLAGS="$CPPFLAGS $LAPACK_CPPFLAGS"
LDFLAGS="$LDFLAGS $LAPACK_LDFLAGS"
PKG_CONFIG_PATH="$PKG_CONFIG_PATH:$LAPACK_PKG_CONFIG_PATH"
