class Match < ApplicationRecord
  belongs_to :winner, class_name: "Player"
  belongs_to :loser, class_name: "Player"

  validate :players_must_be_different

  private

  def players_must_be_different
    if winner_id == loser_id
      errors.add(:loser, "cannot be the same as winner")
    end
  end
end
