# == Class: zabbix::agent::gentoo
#
# activate agent use flag for zabbix package
#
class zabbix::agent::gentoo ($ensure) {
  file { '/etc/portage/package.use/10_zabbix__agent':
    ensure  => $ensure,
    content => 'net-analyzer/zabbix agent'
  }

}
