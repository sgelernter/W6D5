require 'action_view'
class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper
    validates :color, inclusion: {in: %w(black calico tuxedo tabby)}
    validates :sex, inclusion: {in: %w(M F)}
    validates :birth_date, :color, :name, :sex, :description, presence: true

    # attr_reader :birth_date
    # def age
    #     from_time = Time.now - Date.parse(birth_date.to_s)
    #     time_ago_in_words(from_time)
    # end
end