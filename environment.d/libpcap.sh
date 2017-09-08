# libpcap
#
# If you use macOS and use brew, then your libpcap
# is likely to be installed in a way that needs these:
#
#    LDFLAGS: -L/usr/local/opt/libpcap/lib
#    CPPFLAGS: -I/usr/local/opt/libpcap/include
#
# If you use cross-platform libpcap and cross-platform /etc/environment,
# such as macOS with brew, and Linux, and this specific environment file,
# then you will likely want to normalize the installation locations;
# link the macOS location to our naming-convention location like this:
#
#     mkdir /opt/libpcap
#     ln -s /usr/local/opt/libpcap /opt/libpcap/current

X="/opt/libpcap/current"

LIBPCAP_CPPFLAGS="-I$X/include"
LIBPCAP_LDFLAGS="-L$X/lib"

CPPFLAGS="$CPPFLAGS $LIBPCAP_CPPFLAGS"
LDFLAGS="$LDFLAGS $LIBPCAP_LDFLAGS"
