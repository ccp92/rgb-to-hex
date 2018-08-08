# frozen_string_literal: true

require 'rgb_to_hex'

describe Convertor do
  let(:convert) {Convertor.new}
  it 'will convert white from rgb to hex' do
    expect(convert.rgb(255, 255, 255)).to eq('FFFFFF')
  end

  it 'will convert black from rgb to hex' do
    expect(convert.rgb(0, 0, 0)).to eq('000000')
  end

  it 'will convert 66, 0, 0 to 420000' do
    expect(convert.rgb(66, 0, 0)).to eq('420000')
  end

  it 'will convert 0, 66, 0 to 004200' do
    expect(convert.rgb(0, 66, 0)).to eq('004200')
  end

  it 'will convert 0, 0, 66 to 000042' do
    expect(convert.rgb(0, 0, 66)).to eq('000042')
  end

  it 'will convert 244, 0, 0 to F40000' do
    expect(convert.rgb(244, 0, 0)).to eq('F40000')
  end

  it 'will convert 161, 28, 94 to A11C5E' do
    expect(convert.rgb(161, 28, 94)).to eq('A11C5E')
  end

  context 'r, g and b arguments are outside of the range 0 - 255' do
    it 'will convert white from rgb to hex' do
      expect(convert.rgb(256, 256, 256)).to eq('FFFFFF')
    end

    it 'will convert black from rgb to hex' do
      expect(convert.rgb(-1, -1, -1)). to eq('000000')
    end
  end
end
