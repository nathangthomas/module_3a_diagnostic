require 'rails_helper'

describe HouseService do
  it "returns parsed data" do

    service = HouseService.new
    response = service.get_data
    parsed_data = JSON.parse(response.body, symbolize_names: true)

    expect(parsed_data).to be_an Array
    expect(parsed_data[0]).to be_a Hash

    expect(parsed_data.first).to have_key(:name)
    expect(parsed_data.first).to have_key(:role)
    expect(parsed_data.first).to have_key(:house)
  end
end
