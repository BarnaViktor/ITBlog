class Post < ApplicationRecord
    belongs_to :author
    validates :title, presence: true, length: {minimum: 5}
    validates :body, presence: true, length: {minimum: 5}

    def display_day_published
        "publikálva: #{created_at.strftime('%-b %-d, %Y')}"
    end
end
