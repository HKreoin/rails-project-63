# frozen_string_literal: true

RSpec.describe HexletCode do
  it "has a version number" do
    expect(HexletCode::VERSION).not_to be nil
  end

  it "generates html tags" do
    expect(HexletCode::Tag.build('div')).to eq('<div></div>')
  end
end
