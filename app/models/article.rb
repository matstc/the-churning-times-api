class Article < ActiveRecord::Base
  before_save :generate_author

  belongs_to :picture

  def generate_author
    if author.blank?
      first_names = %w{Alice Robert Ahmad Lise Stephen Amy Annie Carol John}
      last_names = %w{Thompson Carrol McClure Bernstein Bright Churner}
      self[:author] = "#{first_names.shuffle.first} #{last_names.shuffle.first}"
    end

    true
  end
end
