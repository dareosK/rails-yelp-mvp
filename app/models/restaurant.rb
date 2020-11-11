class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, presence: :true
  validates :category, inclusion: { in: CATEGORIES }
  has_many :reviews, dependent: :destroy
end

# INCLUSION validates that the attributes' values are included in a
# given set (can be any enumerable object).
# OPTION [:in] receives the set of accepted values.
# The :in option has an alias => :within
# The previous example uses the :message option to show how you can include
# the attribute's value.
# (For full options check the message documentation.)

# The default error message for this helper is "is not included in the list".
