class Application
  @@items = [Item.new("Apples", 1.2), Item.new("Almonds", 0.87)]
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match (/items/)
      item_name = req.path.split("/items/").last
      if item = @@items.include?(item_name)
        resp.write item.price
      end
    else
      resp.write "Error"
    end
  end
end
