class HouseService
  def get_data
    conn = Faraday.get("https://www.potterapi.com/v1/characters?key=#{ENV['KEY']}&house=Gryffindor")
  end
end
