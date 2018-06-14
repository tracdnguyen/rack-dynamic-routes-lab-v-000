class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    search_item = Item.new

    if req.path.match(/items/search_item)
      resp.write search_item.price
    else
      resp.write "Error"
end
