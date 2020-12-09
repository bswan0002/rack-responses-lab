class Application

  def call(env)
    resp = Rack::Response.new

    Time.now.to_a[2] < 12 ? (resp.write "Good Morning!") : (resp.write "Good Afternoon!")

    resp.finish
  end
end