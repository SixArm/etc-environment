# texinfo
#
# If you use macOS and use brew, then your texinfo
# is likely to be installed in a way that needs these:
#
#    LDFLAGS: -L/usr/local/opt/texinfo/lib
#
# If you use cross-platform texinfo and cross-platform /etc/environment,
# such as macOS with brew, and Linux, and this specific environment file,
# then you will likely want to normalize the installation locations;
# link the macOS location to our naming-convention location like this:
#
#     mkdir /opt/texinfo
#     ln -s /usr/local/opt/texinfo /opt/texinfo/current

X="/opt/texinfo/current"

TEXINFO_LDFLAGS="-L/$X/lib"

LDFLAGS="$LDFLAGS $TEXINFO_LDFLAGS"
