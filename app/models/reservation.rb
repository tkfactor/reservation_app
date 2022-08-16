class Reservation < ApplicationRecord
    belongs_to:user
    belongs_to:room

    validates :number, presence: true
    validates :str_date, presence: true
    validates :end_date, presence: true
    validates :str_end_check

    def start_end_check
        errors.add(:end_date, "の日付を正しく記入してください。") unless
        self.str_date < self.end_date
      end
end
