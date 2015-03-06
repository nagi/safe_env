require "safe_env/version"

SAFE_ENV = Proc.new do |name|
  ENV[name].tap{ |value| raise "Environment variable #{name} is missing" unless value }
end
