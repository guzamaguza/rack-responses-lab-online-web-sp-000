class Application

  def call(env)
    resp = Rack::Response.new
    time1 = Time.new

    if time1.hour < 12
      resp.write "Good Morning!"
      #resp.write time1.hour
    elsif time1.hour >= 12
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
