class Page < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true
  validates :uri, presence: true, uniqueness: true
  validates :order, presence: true, uniqueness: true, numericality: true

  before_validation :build_uri

  scope :sorted, -> { order(order: :asc) }
  scope :inverted, -> { order(order: :desc) }

  private
  def build_uri
    if uri.blank?
      uri = self.name.downcase
      uri = uri.gsub(':', '')
      uri = uri.gsub('/', ' ')
      uri = uri.gsub('.', ' ')
      uri = uri.gsub(' ', '-')
      self.uri = URI.encode uri
    end
  end

end
