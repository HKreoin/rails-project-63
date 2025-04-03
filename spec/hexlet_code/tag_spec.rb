# frozen_string_literal: true

RSpec.describe HexletCode::Tag do
  describe '.build' do
    it 'builds a div tag' do
      expect(described_class.build('div')).to eq('<div></div>')
    end

    it 'builds a tag with attributes' do
      result = described_class.build('div', class: 'container', id: 'main')
      expect(result).to eq('<div class="container" id="main"></div>')
    end

    it 'builds a tag with multiple attributes' do
      result = described_class.build('input', type: 'text', name: 'username')
      expect(result).to eq('<input type="text" name="username">')
    end

    it 'generates single tags without attributes' do
      expect(described_class.build('br')).to eq('<br>')
    end

    it 'generates single tags with attributes' do
      expect(described_class.build('img', src: 'path/to/image.jpg')).to eq('<img src="path/to/image.jpg">')
    end

    it 'generates paired tags without attributes' do
      expect(described_class.build('label') { 'Email' }).to eq('<label>Email</label>')
    end

    it 'generates paired tags with attributes and content' do
      expect(described_class.build('label', for: 'email') { 'Email' }).to eq('<label for="email">Email</label>')
    end
  end
end
