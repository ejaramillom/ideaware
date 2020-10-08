class Picture < ApplicationRecord
  # belongs_to :type
  # belongs_to :category
  # by_star_field :picture_date
    # base_uri ''

# access key: Wc_sw7h2IsJOA11q7w7ZXq4iF9LYa2d5YVZ9jtP9QH4
# secret key: PEOevnCJYav4bdQUEJMvCOktpVNNhEAasEHYkYe0At0
# redirect permisions: urn:ietf:wg:oauth:2.0:oob
  #
  # scope :select_type, ->( type ) { Picture.where( 'type = ?', type )}
  # scope :select_favorite, ->( favorite ) { Picture.where( 'favorite = ?', true )}

  # validates :concept, :value, :picture_date, presence: { message: ": por favor llene el campo en blanco" }
  # validate :date_cannot_be_in_the_future
  # validates :value, numericality: { greater_than_or_equal_to: 0 }, presence: { message: ": por favor llene el valor, mayor que 0" }

  # def date_cannot_be_in_the_future
  #   unless picture_date.nil?
  #     if picture_date.to_date > Date.today
  #       errors.add( :picture_date, 'No puede ser un gasto futuro' )
  #     end
  #   end
  # end

end
