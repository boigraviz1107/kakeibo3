require 'rails_helper'
describe  Spending do
  describe '#create' do

  it "user_idがない場合は登録できないこと" do
    spending = build(:spending, user_id: "")
    spending.valid?
    expect(spending.errors[:user_id]).to include("can't be blank")
  end

  it "nameがない場合は登録できないこと" do
    spending = build(:spending, name: "")
    spending.valid?
    expect(spending.errors[:name]).to include("can't be blank")
  end

  it "year_monthがない場合は登録できないこと" do
    spending = build(:spending, year_month: "")
    spending.valid?
    expect(spending.errors[:year_month]).to include("can't be blank")
  end

  it "valueがない場合は登録できないこと" do
    spending = build(:income, value: "")
    spending.valid?
    expect(spending.errors[:value]).to include("can't be blank")
  end


  end
end