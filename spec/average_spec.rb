RSpec.describe 'Average Total Death' do
  it "Must Have Same Value" do
    total_die_1 = 10
    total_die_2 = 15
    average_total = Savior::Average.count(total_die_1, total_die_2)
    average = (10 + 15).to_f / 2
    expect(average_total).to eq(average)
  end
end
