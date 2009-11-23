#Cookbook Name: user

user node[:username] do
    comment "Dynamically created user."
    home "/home/#{node[:username]}"
    shell "/bin/bash"
    supports :manage_home => true
end
