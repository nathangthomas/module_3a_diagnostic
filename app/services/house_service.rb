class HouseService
#   def get_data
#     conn = Faraday.get("https://www.potterapi.com/v1/characters?key=#{ENV['KEY']}&house=Gryffindor")
#   end
# end

  def conn
    Faraday.new(
    url: "https://www.potterapi.com/v1",
    params: {key: ENV['KEY'], house: "Gryffindor"},
    headers: {'Content-Type' => 'application/json'}
  )
  end

  def get_data
    conn.get('characters') do |req|
      req.params
    end
  end
end
