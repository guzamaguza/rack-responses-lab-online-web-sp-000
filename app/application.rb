class Application

  def call(env)
    resp = Rack::Response.new
    time1 = Time.new

    if time1.hour.inspect < 12
      resp.write "Good Morning!"
      resp.write time1.hour
    elsif time1.hour.inspect >= 12
      resp.write "Good Afternoon!"
      resp.write time1.hour
    end

    resp.finish
  end

end
