# Ruby language

# We put our Ruby in /opt because we want it to be system-wide.
# We have multiple Ruby virtual machines and multiple verisons.
#
# Example:
#
#   /opt/ruby/mri/2.1.5
#   /opt/ruby/jruby/1.7.16.1
#   /opt/ruby/rbx/2.3.0
#
# We link the preferred vm and version this way:
#
#   ln -sfn /opt/ruby/mri/2.1.5 /opt/ruby/current
#
# We put our Ruby gems in a similar kind of setup:
#
#   /opt/rubygems/mri/2.1.5
#   /opt/rubygems/jruby/1.7.16.1
#   /opt/rubgemsy/rbx/2.3.0
#
# We link the preferred vm and version this way:
#
#   ln -sfn /opt/rubygems/mri/2.1.5 /opt/rubygems/current
#
OPT="$OPT:/opt/ruby/current/bin"
OPT="$OPT:/opt/rubygems/current/bin"

GEM_HOME="/opt/rubygems/current"
GEM_PATH="/opt/rubygems/current"

RUBYOPT='-rubygems -rpsych'
