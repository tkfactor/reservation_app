class Reservation < ApplicationRecord
    belongs_to:user
    belongs_to:room

    validates :number, presence: { message: "人数を入力してください" }
    validates :str_date, presence: { message: "開始日を入力してください" }
    validates :end_date, presence: { message: "終了日を入力してください" }
    validate :start_end_check

    def start_end_check
        errors.add(:end_date, "は開始日より前の日付は登録できません" ) unless
        self.str_date < self.end_date
    end
end
