class Application
  @@items = [Item.new("Apples", 1.2), Item.new("Almonds", 0.87)]
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match (/items/)
      resp.write "price"
    else
      resp.write "Error"
    end
  end
end
