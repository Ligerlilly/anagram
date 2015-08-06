require 'rspec'
require 'anagram?.rb'
require 'pry'

describe 'String#anagram?' do
  it 'returns array of argument if it is an anagram of the object' do
    expect('cat'.anagram?('tac')).to eq(['tac'])
  end

  it 'returns empty array if the object and argument(s) are not an anagram' do
    expect('dog'.anagram?('cat')).to eq([])
  end

  it 'handles empty spaces in strings' do
    expect('ca t'.anagram?('tac')).to eq(['tac'])
  end

  it 'handles an array and return and array of anagrams' do
    expect('cat'.anagram?('dog act blah tac')).to eq(['act', 'tac'])
  end
end
