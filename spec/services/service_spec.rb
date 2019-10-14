require 'rails_helper'

describe ServiceName do
  it "returns parsed data" do

    service = ServiceName.new or
    service = subject.ServiceName

    whatever_it_is = service.get_what_ever_it_is

    expect(whatever_it_is).to be_an Array
    expect(whatever_it_is[0]).to be_a Hash

    expect(whatever_it_is.first).to have_key(:key_1)
    expect(whatever_it_is.first).to have_key(:key_2)
  end
end
