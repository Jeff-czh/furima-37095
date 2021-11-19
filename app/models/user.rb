class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  validates :nickname,               presence: true
  validates :family_name,            presence: true, format: {with: /\A[ぁ-んァ-ン一-龥]/, message: "should be full-width Kanji" }
  validates :first_name,             presence: true, format: {with: /\A[ぁ-んァ-ン一-龥]/, message: "should be full-width Kanji" }
  validates :family_name_kana,       presence: true, format: {with: /\A[ァ-ヶー－]+\z/, message: "should be full-width katakana" }
  validates :first_name_kana,        presence: true, format: {with: /\A[ァ-ヶー－]+\z/, message: "should be full-width katakana" }
  validates :birthday,               presence: true
  validates :password,               format:{with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i, message: "should have both letters and numbers"}
end