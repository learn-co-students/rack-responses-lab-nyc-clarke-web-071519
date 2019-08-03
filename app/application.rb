class Application

    def call(env)
        resp = Rack::Response.new
        now = Time.now

# If it's before noon, greet the user with "Good Morning!"
        if now.hour <= 12
            resp.write "Good Morning!"
# If it's after noon, greet the user with "Good Afternoon!"
        else
            resp.write "Good Afternoon!"
        end

        resp.finish
    end
end
