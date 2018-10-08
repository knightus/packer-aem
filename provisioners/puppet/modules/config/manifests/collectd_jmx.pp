define config::collectd_jmx (
) {

  # collectd::plugin::genericjmx also installs collectd-java plugin, which in
  # turn also installs openjdk and makes it a default alternative, hence we need
  # to set the default back to Oracle JDK
  class { 'collectd::plugin::genericjmx':
    manage_package => true,
  } -> exec { 'alternatives --set java /usr/java/jdk1.8.0_141/jre/bin/java':
  }

}
