require 'rspec'

# sample array
headers = [
  '1B',
  '2B',
  '3B',
  'SS',
  'C',
  'P',
  'LF',
  'CF',
  'RF'
]

astros = [
  'Gurriel',
  'Altuve',
  'Bregman',
  'Correa',
  'Gattis',
  'Keuchel',
  'Beltran',
  'Springer',
  'Reddick'
]

rangers = [
  'Fielder',
  'Andrus',
  'Odor',
  'Beltre',
  'Lucroy',
  'Darvish',
  'Gomez',
  'Choo',
  'Mazara'
]

# function for filtering the data
def position_filter(headers, *data)
    headers.zip(*data)
end

# print & inspect
p position_filter(headers, astros, rangers)

# test the code
describe 'Position Filter' do
  it 'lines up players with their positions' do
    test_headers = ['1B', '2B', 'P']
    test_team = ['First Base Player', 'Second Base Player', 'Pitcher']
    expect(position_filter(test_headers, test_team).first).to eq(['1B', 'First Base Player'])
  end
end
