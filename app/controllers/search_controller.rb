class SearchController < ApplicationController

  def index
    @house_members = house_members
  end

  private

  def house_members
    response = HouseService.new.get_data
    parsed_data = JSON.parse(response.body, symbolize_names: true)
    parsed_data.map do |member|
      HouseMember.new(member)
    end
  end
end
