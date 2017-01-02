# ncurses
#
# If you use macOS and use brew, then your ncurses
# is likely to be installed in a way that needs these:
#
#    LDFLAGS: -L/usr/local/opt/ncurses/lib
#    CPPFLAGS: -I/usr/local/opt/ncurses/include
#    PKG_CONFIG_PATH: /usr/local/opt/ncurses/lib/pkgconfig
#
# If you use cross-platform ncurses and cross-platform /etc/environment,
# such as macOS with brew, and Linux, and this specific environment file,
# then you will likely want to normalize the installation locations;
# link the macOS location to our naming-convention location like this:
#
#     mkdir /opt/ncurses
#     ln -s /usr/local/opt/ncurses /opt/ncurses/current

X="/opt/ncurses/current"

NCURSES_CPPFLAGS="-I$X/include"
NCURSES_LDFLAGS="-L$X/lib"
NCURSES_PKG_CONFIG_PATH="$X/lib/pkgconfig"

CPPFLAGS="$CPPFLAGS $NCURSES_CPPFLAGS"
LDFLAGS="$LDFLAGS $NCURSES_LDFLAGS"
