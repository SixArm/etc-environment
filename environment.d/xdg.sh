## 
# XDG Base Directory Specification
#
# The XDG Base Directory Specification is based on the following concepts:
# 
#   * $XDG_DATA_HOME
#   * $XDG_DATA_DIRS
#   * $XDG_CONFIG_HOME
#   * $XDG_CONFIG_DIRS
#   * $XDG_CACHE_HOME
#   * $XDG_RUNTIME_DIR
#
# Environment variables:
#
#   * $XDG_CONFIG_HOME defines the base directory relative to
#     which user-specific configuration files should be stored. 
#     Default: $HOME/.config
#
#   * $XDG_CONFIG_DIRS defines the preference-ordered set of
#     base directories to search for configuration files in 
#     addition to the $XDG_CONFIG_HOME base directory. 
#     Directories should be seperated with a colon ':'.
#     Default: /etc/xdg
#
#   * $XDG_DATA_HOME defines the base directory relative to
#     which user-specific data files should be stored. 
#     Default: $HOME/.local/share
#
#   * $XDG_DATA_DIRS defines the preference-ordered set of 
#     base directories to search for data files in addition 
#     to the $XDG_DATA_HOME base directory. 
#     Default: /usr/local/share/:/usr/share/
#
#   * $XDG_CACHE_HOME defines the base directory relative to
#     which user-specific non-essential data files should be stored.
#     Default: $HOME/.cache
#
#   * $XDG_RUNTIME_DIR defines the base directory relative to
#     which user-specific non-essential runtime files and other file
#     objects (such as sockets, named pipes, ...) should be stored.
#     The directory MUST be owned by the user and mode MUST be 0700.
#     Default: If $XDG_RUNTIME_DIR is not set applications should
#     fall back to a replacement directory with similar capabilities
#     and print a warning message.
#
# Path details:
#
#   * All paths set in these environment variables must be absolute.
#
#   * If an implementation encounters a relative path in any of these
#     variables it should consider the path invalid and ignore it.
#
#   * Paths must be separated with a colon ':'.
#
##
