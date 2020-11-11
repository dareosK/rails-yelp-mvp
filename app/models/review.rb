class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end

# NUMERICALITY validates that your attributes have only numeric values.
# By default, it will match an optional sign followed by an integral or
# floating point number. To specify that only integral numbers are allowed
# set :only_integer to true.

# Besides :only_integer, this helper also accepts the following options:

# :greater_than - (Default error  => "must be greater than %{count}".)
# :greater_than_or_equal_to - (Default error => "must be greater than or equal to %{count}".)
# :equal_to - (=>"must be equal to %{count}".)
# :less_than - ("must be less than %{count}".)
# :less_than_or_equal_to - ("must be less than or equal to %{count}".)
# :other_than - (=> "must be other than %{count}".)
# :odd - (=> "must be odd".)
# :even - (=> "must be even".)
