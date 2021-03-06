require 'faker'
require 'forgery_ja'

FactoryBot.define do
  factory :dealing do
    buyer_id                  { Faker::Number.number(digits: Faker::Number.between(from: 1, to: 10)) }
    item_id                   { Faker::Number.number(digits: Faker::Number.between(from: 1, to: 10)) }
    charge                    { Faker::Crypto.md5 }
    dealing_status_id         { 1 }
    last_name                 { ForgeryJa(:name).last_name }
    first_name                { ForgeryJa(:name).first_name }
    last_name_kana            { ForgeryJa(:name).last_name(to: ForgeryJa::KANA) }
    first_name_kana           { ForgeryJa(:name).first_name(to: ForgeryJa::KANA) }
    postal_number             { Faker::Number.number(digits: 7) }
    prefecture_id             { Faker::Number.between(from: 1, to: 47) }
    city                      { ForgeryJa(:address).city }
    block                     { ForgeryJa(:address).street_number }
    building_name             { "テストレジデンス" }
    phone_number              { Faker::Number.number(digits: Faker::Number.between(from: 9, to: 10)) }
  end
end
