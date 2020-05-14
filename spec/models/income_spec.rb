require 'rails_helper'
describe Income do
  describe '#create' do

  it "user_idがない場合は登録できないこと" do
    income = build(:income, user_id: "")
    income.valid?
    expect(income.errors[:user_id]).to include("can't be blank")
  end

  it "nameがない場合は登録できないこと" do
    income = build(:income, name: "")
    income.valid?
    expect(income.errors[:name]).to include("can't be blank")
  end

  it "year_monthがない場合は登録できないこと" do
    income = build(:income, year_month: "")
    income.valid?
    expect(income.errors[:year_month]).to include("can't be blank")
  end

  it "valueがない場合は登録できないこと" do
    income = build(:income, value: "")
    income.valid?
    expect(income.errors[:value]).to include("can't be blank")
  end


  end
end