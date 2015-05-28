# Go programming language

# The GOPATH environment variable specifies the location of your workspace.
# It is likely the only variable you'll need to set when developing Go code.
#
# GOPATH may be set to a colon-separated list of paths inside which
# Go code, package objects, and executables may be found.
#
# Set a GOPATH to use goinstall to build and install your own code and
# external libraries outside of the Go tree (and to avoid writing Makefiles).
#
# $GOPATH must not overlap with $GOROOT, because `go install` looks in
# both GOROOT and GOPATH for imports like `fmt` and `os`, and gets confused.
#
# To verify GOPATH, use `go env`.
#
# Example:
#
#     $ mkdir $HOME/go
#     $ export GOPATH=$HOME/go
#
# For convenience, add the workspace's bin subdirectory to your PATH:
#
#     $ export PATH=$PATH:$GOPATH/bin
#
# For convenience On OS X or Linux, adding the following expression
# to your PATH will add all $GOPATH/bin directories:
#
#     ${GOPATH//://bin:}/bin
#
# Our system's users may want to set their own GOPATH, to override this one.
#
GOPATH=$HOME/go
export PATH=$PATH:${GOPATH//://bin:}/bin

# The GOROOT environment variable is the root of the Go tree.
# Typically we don't set this for any current Go setup.
#
# See "You Don't Need To Set GOROOT, Really":
# http://dave.cheney.net/2013/06/14/you-dont-need-to-set-goroot-really
#
# When you compile Go from source, the value of $GOROOT is automatically
# discovered (it is one directory up from the all.bash script) and then
# embedded into the go tool that is built from that source tree.
# You can see this by running `go env GOROOT`.
#
# Example with typical OSX Homebrew installation:
#
#     $ go env GOROOT
#     /usr/local/Cellar/go/1.4.2/libexec
#
# If you are a Java user, $GOROOT is similar in effect to $JAVA_HOME.
#
# If you choose not to set $GOROOT, you must run gomake instead of make or
# gmake when developing Go programs using the conventional makefiles.
#
# There are cases that where you may have to set $GOROOT.
#
#  * You are a Linux, FreeBSD or OS X user using the the zip or tarball
#    binary downloads from the golang.org website. These binaries have
#    a $GOROOT value of /usr/local/go and recommend you unpack them into
#    that location. If you choose not to do this, then you must set $GOROOT
#    to the location you chose.
#
#  * You are a Windows user using the zip binary download from golang.org.
#    These binaries have a $GOROOT value of C:\Go. If you place Go somewhere
#   else on your system then you must set $GOROOT to the location you chose.
#
#  * A default OSX homebrew setup will install go in /usr/local/Cellar/go/.
#    The export path is GOROOT=/usr/local/Cellar/go/{version} and
#    then also use export PATH=$PATH:$GOROOT/bin.
#
#GOROOT=/opt/go/current
#export PATH=$PATH:$GOROOT/bin

# Go binary directory
#
# N.b. Typically don't set GOBIN as it's not useful for 99% of cases.
# If the GOBIN environment variable is set, commands are installed to the
# directory it names instead of DIR/bin. In other words, it's useful if
# you want to (perhaps) set a universal, system-wide location for
# installed Go binaries/programs. In most cases, you do not.
#
#GOBIN=/opt/go/current/bin
#export PATH=$PATH:$GOBIN
