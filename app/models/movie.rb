class Movie < ActiveRecord::Base
  has_many :reviews

  validates :title,
    presence: true

  validates :director,
    presence: true

  validates :runtime_in_minutes,
    numericality: {only_intger: true}

  validates :description,
    presence: :true

  # validates :poster_image_url,
  #   presence: :true

  validates :release_date,
    presence: :true

  # validate :release_date_is_in_the_future

  scope :runtime_greater_than, ->(length) {where("runtime_in_minutes > ?", length)}
  scope :runtime_less_than, ->(length) {where("runtime_in_minutes < ?", length)}
  scope :search, ->(text) {where("lower(title || director) LIKE ?", "%#{text.downcase}%")}

  mount_uploader :poster_image_url, ImageUploader

  def review_average
    reviews.sum(:rating_out_of_ten)/reviews.size
  end

  protected

  def release_date_is_in_the_future
    if release_date.present?
      errors.add(:release_date, "should probably be in the future") if release_date < Date.today
    end
  end

end
