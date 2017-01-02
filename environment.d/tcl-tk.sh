# tcl-tk
#
# If you use macOS and use brew, then your tcl-tk
# is likely to be installed in a way that needs these:
#
#    LDFLAGS: -L/usr/local/opt/tcl-tk/lib
#    CPPFLAGS: -I/usr/local/opt/tcl-tk/include
#    PKG_CONFIG_PATH: /usr/local/opt/tcl-tk/lib/pkgconfig
#
# If you use cross-platform tcl-tk and cross-platform /etc/environment,
# such as macOS with brew, and Linux, and this specific environment file,
# then you will likely want to normalize the installation locations;
# link the macOS location to our naming-convention location like this:
#
#     mkdir /opt/tcl-tk
#     ln -s /usr/local/opt/tcl-tk /opt/tcl-tk/current

X="/opt/tcl-tk/current"
OPT="$OPT:$X/bin"

TCL_TK_CPPFLAGS="-I$X/include"
TCL_TK_LDFLAGS="-L/$X/lib"
TCL_TK_PKG_CONFIG_PATH="$X/lib/pkgconfig"

CPPFLAGS="$CPPFLAGS $TCL_TK_CPPFLAGS"
LDFLAGS="$LDFLAGS $TCL_TK_LDFLAGS"
PKG_CONFIG_PATH="$PKG_CONFIG_PATH:$TCL_TK_PKG_CONFIG_PATH"
