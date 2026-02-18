class Player < ApplicationRecord
  has_many :won_matches,
           class_name: "Match",
           foreign_key: "winner_id",
           dependent: :destroy

  has_many :lost_matches,
           class_name: "Match",
           foreign_key: "loser_id",
           dependent: :destroy

  validates :name, presence: true, uniqueness: true

  def wins
    won_matches.count
  end

  def losses
    lost_matches.count
  end

  def self.ranked_with_position
    players = all.sort_by { |player| -player.wins }
  
    rankings = []
    current_rank = 0
    last_wins = nil
  
    players.each_with_index do |player, index|
      if player.wins != last_wins
        current_rank = index + 1
        last_wins = player.wins
      end
  
      rankings << { player: player, rank: current_rank }
    end
  
    rankings
  end
  
end
