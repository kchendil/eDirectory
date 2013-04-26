#
# Cookbook Name:: edirectory
# Attributes:: default
#
# Copyright 2010, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# default tomcat attributes


default['edirectory']['edirectory_build_loc'] = "/home/vagrant/IDM402AE/test/products/eDirectory/x64/setup/nds-install"
default['edirectory']['edirectory_install_loc'] = "/opt/novell/eDirectory"
default['edirectory']['edirectory_tree_name'] = "VAGRANT"
default['edirectory']['edirectory_dib_loc'] = "/var/opt/novell/eDirectory"
default['edirectory']['edirectory_admin']="admin"
default['edirectory']['edirectory_context']="servers.system"
default['edirectory']['edirectory_ldap_clear_port']="389"
default['edirectory']['edirectory_ldap_ssl_port']="636"
default['edirectory']['edirectory_port']="524"
default['edirectory']['edirectory_imonitor_http_port']="8028"
default['edirectory']['edirectory_imonitor_https_port']="8030"
default['edirectory']['edirectory_password']="n"
default['edirectory']['edirectory_conf_file']="/etc/opt/novell/eDirectory/conf/nds.conf"


