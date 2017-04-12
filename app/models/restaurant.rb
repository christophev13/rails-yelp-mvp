class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy

    VALID_CATEGORIES = %w(chinese italian french belgian japanese)
    validates :name, :address, :category, :phone_number, presence: true
    validates_inclusion_of :category, :in => VALID_CATEGORIES
end
