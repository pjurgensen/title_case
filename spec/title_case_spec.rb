require ('rspec')
require ('title_case')

describe('title_case') do
  it('returns one word properly formatted') do
    title_case('cat').should(eq('Cat'))
  end
  it('returns multiple words properly formatted') do
    title_case('HELLO CAT').should(eq('Hello Cat'))
  end
  it('does not capitalize exception words') do
    title_case('cat in the hat').should(eq('Cat in the Hat'))
  end
  it('turns exception words into lowercase') do
    title_case('cat IN the Hat').should(eq('Cat in the Hat'))
  end
  it('always capitalizes the first word') do
    title_case('a cat in the hat').should(eq('A Cat in the Hat'))
  end
end
