require 'data_mapper'
require 'dm-postgres-adapter'

task default: %w[upgrade]

task :upgrade do
  DataMapper.auto_upgrade!
end

task :migrate do
  DataMapper.auto_migrate!
end
