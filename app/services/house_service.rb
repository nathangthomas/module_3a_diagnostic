class HouseService
  def get_data
    conn = Faraday.get("https://www.potterapi.com/v1/characters?key=$2a$10$Xrj4w4pg4fk5RB85JrNGhO8RdMJEEGTbF/RGyoaV1gqE9s2Wvgo2K&house=Slytherin&bloodStatus=half-blood")
  end
end
