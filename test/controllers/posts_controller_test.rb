require 'test_helper'
require 'minitest/around/spec'

describe PostsController do

  around do |test|
    puts ">>> around (before)"
    test.call
    puts ">>> around (after)"
  end

  it "should call around block" do
    get :index
    assert_response :success
  end

end
