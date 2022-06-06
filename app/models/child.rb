class Child < ApplicationRecord
  belongs_to :parent, optional: true
end
