# qt5
#
# If you use macOS and use brew, then your qt5
# is likely to be installed in a way that needs these:
#
#    LDFLAGS: -L/usr/local/opt/qt5/lib
#    CPPFLAGS: -I/usr/local/opt/qt5/include
#
# If you use cross-platform qt5 and cross-platform /etc/environment,
# such as macOS with brew, and Linux, and this specific environment file,
# then you will likely want to normalize the installation locations;
# link the macOS location to our naming-convention location like this:
#
#     mkdir /opt/qt5
#     ln -s /usr/local/opt/qt5 /opt/qt5/current

X="/opt/qt5/current"

QT5_CPPFLAGS="-I$X/include"
QT5_LDFLAGS="-L$X/lib"
QT5_PKG_CONFIG_PATH="$X/lib/pkgconfig"

CPPFLAGS="$CPPFLAGS $QT5_CPPFLAGS"
LDFLAGS="$LDFLAGS $QT5_LDFLAGS"
PKG_CONFIG_PATH="$PKG_CONFIG_PATH:$QT5_PKG_CONFIG_PATH"
