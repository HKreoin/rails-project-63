# frozen_string_literal: true

RSpec.describe HexletCode::Tag do
  describe '.build' do
    it 'generates single tags without attributes' do
      expect(described_class.build('br')).to eq('<br>')
    end

    it 'generates single tags with attributes' do
      expect(described_class.build('img', src: 'path/to/image')).to eq('<img src="path/to/image">')
      expect(described_class.build('input', type: 'submit', value: 'Save')).to eq('<input type="submit" value="Save">')
    end

    it 'generates paired tags without attributes' do
      expect(described_class.build('div')).to eq('<div></div>')
    end

    it 'generates paired tags with content' do
      expect(described_class.build('label') { 'Email' }).to eq('<label>Email</label>')
    end

    it 'generates paired tags with attributes and content' do
      expect(described_class.build('label', for: 'email') { 'Email' }).to eq('<label for="email">Email</label>')
    end
  end
end 