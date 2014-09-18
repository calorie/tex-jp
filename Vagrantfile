# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.provider 'docker' do |d|
    d.name    = 'tex-jp'
    d.image   = 'calorie/tex-jp:latest'
    d.cmd     = %w{ /sbin/my_init --enable-insecure-key }
    d.has_ssh = true
    d.volumes = ["#{File.expand_path(File.join(File.dirname(__FILE__), 'tex'))}:/tex"]
  end
  config.ssh.port             = 22
  config.ssh.username         = 'root'
  config.ssh.private_key_path = 'insecure_key'
end
