#
# Cookbook Name:: edirectory
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

edirectory_build_loc=node['edirectory']['edirectory_build_loc']





execute "Install eDirectory" do
  command " \"#{edirectory_build_loc}\" -c server -c admutils -i -j -u"  
   creates "/var/opt/novell/eDirectory/log/nds-install.log"
  action :run
  
end




