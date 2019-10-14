class SearchController < ApplicationController

  def index
    @house_members = house_members
  end

  private

  def parsed_data
    response = Faraday.get("https://www.potterapi.com/v1/characters?key=$2a$10$Xrj4w4pg4fk5RB85JrNGhO8RdMJEEGTbF/RGyoaV1gqE9s2Wvgo2K&house=Grffindor&bloodStatus=half-blood")
    JSON.parse(response.body, symbolize_names: true)
  end

  def house_members
    parsed_data.map do |member|
      HouseMember.new(member)
    end
  end
end

  # def conn
  #   Faraday.new(
  #   url: "https://www.potterapi.com/v1",
  #   params: {key: "$2a$10$Xrj4w4pg4fk5RB85JrNGhO8RdMJEEGTbF/RGyoaV1gqE9s2Wvgo2K", house: "Slytherin", bloodStatus: "half-blood"},
  #   headers: {'Content-Type' => 'application/json'}
  #   )
  # end
  #
  # def response
  #   resp = conn.get('characters') do |req|
  #     req.params
  #   end
  #   JSON.parse(resp.body, symbolize_names: true)
  # end

# end
