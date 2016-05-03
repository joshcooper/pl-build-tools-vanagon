platform "sles-11-s390x" do |plat|
  plat.servicedir "/etc/init.d"
  plat.defaultdir "/etc/sysconfig"
  plat.servicetype "sysv"

  plat.zypper_repo "http://osmirror.delivery.puppetlabs.net/sles-11-deps-x86_64/sles-11-deps-x86_64.repo"
  plat.zypper_repo "http://pl-build-tools.delivery.puppetlabs.net/yum/sles/11/s390x/pl-build-tools-sles-11-s390x.repo"
  plat.zypper_repo "http://pl-build-tools.delivery.puppetlabs.net/yum/sles/11/x86_64/pl-build-tools-sles-11-x86_64.repo"
  plat.provision_with "zypper -n --no-gpg-checks install -y aaa_base autoconf automake rsync gcc make"
  plat.install_build_dependencies_with "zypper -n --no-gpg-checks install -y"
  plat.cross_compiled true
  plat.vmpooler_template "sles-11-x86_64"
end