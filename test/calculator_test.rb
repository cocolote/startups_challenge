require_relative '../lib/calculator'

describe 'Calculator' do
  it 'devides 6 over 0 and raise ZeroDivisionError' do
    expect { div(6, 0) }.to raise_error ZeroDivisionError
  end

  it 'devides 6 over 5 and returns positive quotient and remainder' do
    expect(div(6, 5)).to eq '1 r 1'
  end

  it 'devides 6 over -5 and returns negative quotient and remainder' do
    expect(div(6, -5)).to eq '-2 r -4'
  end

  it 'devides -6 over 5 and returns negative quotient and positive remainder' do
    expect(div(-6, 5)).to eq '-2 r 4'
  end

  it 'devides -6 over -5 and returns positive quotient and negative remainder' do
    expect(div(-6, -5)).to eq '1 r -1'
  end

  it 'devides 25 over 5 and returns positive quotient and remainder' do
    expect(div(25, 5)).to eq '5 r 0'
  end

  it 'devides 25 over -5 and returns negative quotient and remainder' do
    expect(div(25, -5)).to eq '-5 r 0'
  end

  it 'devides -25 over 5 and returns negative quotient and positive remainder' do
    expect(div(-25, 5)).to eq '-5 r 0'
  end

  it 'devides -6 over -5 and returns positive quotient and negative remainder' do
    expect(div(-25, -5)).to eq '5 r 0'
  end

  it 'devides 3 over 5 and returns positive quotient and remainder' do
    expect(div(3, 5)).to eq '0 r 3'
  end

  it 'devides 3 over -5 and returns negative quotient and remainder' do
    expect(div(3, -5)).to eq '-1 r -2'
  end

  it 'devides -3 over 5 and returns negative quotient and positive remainder' do
    expect(div(-3, 5)).to eq '-1 r 2'
  end

  it 'devides -3 over -5 and returns positive quotient and negative remainder' do
    expect(div(-3, -5)).to eq '0 r -3'
  end
end
