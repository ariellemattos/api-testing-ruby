Before '@users' do

    @nome = "morpheus"
    @job = "leader"

    @body = {
        "name": @nome,
        "job": @job
    }
    
    @users = Users.new(@body)
    
end