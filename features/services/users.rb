class Users
  include HTTParty
  require_relative '../hooks/users_hook'
  base_uri "https://reqres.in/api"
  
  
  def initialize(body)
    @request0 = {}
    @request = { :body => body}
  end

  def getAllUsers
    self.class.get("/users", @request0)
  end

  def getUser(id)
    self.class.get("/users/#{id}", @request0)
  end

  def postUser
    self.class.post("/users", @request)
  end
end