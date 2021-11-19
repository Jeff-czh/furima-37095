FactoryBot.define do
  factory :user do
    nickname              {"furima太郎"}
    email                 {"test@sample.com"}
    password              {"123abc"}
    password_confirmation {password}
    family_name           {"山田"}
    first_name            {"陸太郎"}
    family_name_kana      {"ヤマダ"}
    first_name_kana       {"リクタロウ"}
    birthday              {"2021-11-11"}
  end
end