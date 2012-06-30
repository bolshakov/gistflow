class Settings < ActiveRecord::Base
  attr_accessible :default_wall, :receive_notification_emails, :language
  
  WALLS = %w(all flow)
  LANGUAGES = %w(en cn)
  
  belongs_to :user
  validates :default_wall, inclusion: { in: WALLS }
  validates :language, inclusion: { in: LANGUAGES }, presence: true
  
  def default_wall_action
    { flow: 'flow', all: 'index' }[default_wall.to_sym]
  end
end