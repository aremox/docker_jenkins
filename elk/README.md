wsl.exe -u root
grep vm.max_map_count /etc/sysctl.conf
sysctl -w vm.max_map_count=262144