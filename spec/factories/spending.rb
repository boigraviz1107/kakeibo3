FactoryBot.define do

  factory :spending do
    user_id               { 1 }
    name                  {"食費"}
    year_month            {"2020-05-14"}
    value                 {"5000"}
  end

end