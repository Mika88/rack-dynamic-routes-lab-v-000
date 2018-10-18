class Application
  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      @@items.each do |item|

        if @@item.include?(item)
          resp.write "#{item.price}\n"
        else
          resp.write "Item Not Found"
          reps.status = 400
        end
      end

     else
       resp.write "Route not found"
       resp.status = 404
     end
   resp.finish
  end
end
