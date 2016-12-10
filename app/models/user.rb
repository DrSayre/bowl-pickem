class User < ApplicationRecord
  has_many :predictions
  validates :username, uniqueness: true, allow_nil: true, allow_blank: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def selected_team?(bowl, team)
    predictions.where(bowl_id: bowl.id, team_id: team.id).present?
  end
end
