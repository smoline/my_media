class TvShow < ApplicationRecord
  has_many :tv_owners, dependent: :destroy, inverse_of: :tv_show
  accepts_nested_attributes_for :tv_owners
  has_many :tv_show_owners, through: :tv_owners, class_name: "User", source: :user
  has_many :tv_favorites, dependent: :destroy
  has_many :tv_show_favorites, through: :tv_favorites, class_name: "User", source: :user

  has_many :tv_genres, dependent: :destroy
  has_many :genres, through: :tv_genres

  has_many :tv_creators, dependent: :destroy
  has_many :people, through: :tv_creators
end
