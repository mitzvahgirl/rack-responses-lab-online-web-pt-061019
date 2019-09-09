class Application

  def call(env)
    resp = Rack::Response.new

    if Time.now.hour.between?(0, 11)
      resp.write "Good Morning!"
    elsif Time.now.hour.between?(12, 18)
      resp.write "Good Afternoon."
    else
      resp.write "Good Evening!"
    end

    resp.finish
  end
end