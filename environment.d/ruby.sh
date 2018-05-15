# Ruby language

# We put our Ruby in /opt because we want it to be system-wide.
# We have multiple Ruby virtual machines and multiple verisons.
#
# Example:
#
#   /opt/ruby/2.5.1
#   /opt/jruby/9.1.17.0
#   /opt/rbx/3.103
#
# We link the preferred vm and version this way:
#
#   ln -sfn /opt/ruby/2.5.1 /opt/ruby/current
#
OPT="$OPT:/opt/ruby/current/bin"
OPT="$OPT:/opt/jruby/current/bin"
OPT="$OPT:/opt/rbx/current/bin"
