install_path = project_path('tmunix')

github_project 'tmunix' do
  upstream 'inecas'
  path install_path
  project_owner node[:user]
  user node[:user]
  branch 'master'
end

directory "/home/#{node[:user]}/.tmunix" do
  owner node[:user]
  group node[:user]
  mode '0755'
end

link "/home/#{node[:user]}/.bin/tmunix" do
  to "#{install_path}/tmunix"
end

# TODO only if projects_foreman::foreman recipe is in runlist
template "/home/#{node[:user]}/.tmunix/foreman" do
  owner node[:user]
  group node[:user]
  mode '0644'
  source 'foreman.erb'
end

link "/home/#{node[:user]}/.tmunix/default" do
  to "/home/#{node[:user]}/.tmunix/foreman"
end
