#
# Cookbook Name:: japanese
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'language-pack-ja'
bash 'dpkg-reconfigure locales'
