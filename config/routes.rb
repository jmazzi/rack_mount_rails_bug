class RackTest
  def call(env)
    [200, {}, ["Rails #{Rails.version} - #{env['PATH_INFO']}"]]
  end
end

RackMountRaiilsBug::Application.routes.draw do
  mount RackTest.new => "/testing"
end
