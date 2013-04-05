#
# Cookbook Name:: composer
# Recipe:: default
#
# Copyright 2013, Bryan te Beek
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
#

# Composer won't work without PHP
include_recipe "php"

# Install curl
package "curl" do
    action :install
end

# Install Composer
bash "composer" do
  code "curl -s https://getcomposer.org/installer | php && sudo mv composer.phar #{node['composer']['bin']}"
  not_if do
    File.exists?("#{node['composer']['bin']}")
  end
end

# Update Composer
bash "composer-update" do
    code "composer self-update"
end
