class Article < ActiveRecord::Base

  belongs_to :user

  validates :title, presence: true, uniqueness: true
  validates :uri, presence: true, uniqueness: true
  validates :content, presence: true
  validates :user_id, presence: true
  validates :release_date, presence: true

  scope :published, -> { where('release_date <= ?', Time.now) }

  before_validation :build_uri

  alias_attribute :author, :user

  def preview

    first_row = ''

    self.content.split("\n").each do |row|
      row = row.strip
      if row.present? && !row.start_with?(':') && !row.start_with?('=')
        first_row = row
        break
      end
    end

    first_row
  end

  private
  def build_uri
    if uri.blank?
      uri = self.title.downcase
      uri = uri.gsub(':', '')
      uri = uri.gsub('/', ' ')
      uri = uri.gsub('.', ' ')
      uri = uri.gsub(' ', '-')
      self.uri = URI.encode uri
    end
  end

end
