RSpec.describe 'Total Person Died' do
  it "Must Have Same Value" do
    year = 4
    total_died = Savior::PersonDie.new(year,nil).total_died_on_year(year)
    expect(total_died).to eq(7)
  end
end
