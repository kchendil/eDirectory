#
# Cookbook Name:: edirectory
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

edirectory_build_loc=node['edirectory']['edirectory_build_loc']
edirectory_install_loc=node['edirectory']['edirectory_install_loc']
edirectory_tree_name=node['edirectory']['edirectory_tree_name']
edirectory_dib_loc=node['edirectory']['edirectory_dib_loc']
edirectory_admin=node['edirectory']['edirectory_admin']
edirectory_context=node['edirectory']['edirectory_context']
edirectory_ldap_clear_port=node['edirectory']['edirectory_ldap_clear_port']
edirectory_ldap_ssl_port=node['edirectory']['edirectory_ldap_ssl_port']
edirectory_port=node['edirectory']['edirectory_port']
edirectory_imonitor_http_port=node['edirectory']['edirectory_imonitor_http_port']
edirectory_imonitor_https_port=node['edirectory']['edirectory_imonitor_https_port']
edirectory_password=node['edirectory']['edirectory_password']
edirectory_conf_file=node['edirectory']['edirectory_conf_file']





execute "Disable LDAPS" do
 
 command ". /opt/novell/eDirectory/bin/ndspath; ldapconfig set \"Require TLS for Simple Binds with Password\"=no -t #{edirectory_tree_name} -w #{edirectory_password} -a #{edirectory_admin}.#{edirectory_context}"  
  
  # command " /opt/novell/eDirectory/bin/ndsconfig new -T -t VAGRANT -n servers.system -a \"admin.sa.system\"  -D \"/var/opt/novell/eDirectory\" -c -d \"/var/opt/novell/eDirectory/data/dib\" -B @524 -L 389 -l 636 -o 8028 -O 8030 -w n --config-file /etc/opt/novell/eDirectory/conf/nds.conf > \"/var/opt/novell/ndsconfig_new.log\""  
  # creates "/var/opt/novell/ndsconfig_new.log"
  action :run
  
end






