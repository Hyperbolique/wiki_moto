class Couleur < ActiveRecord::Base
	has_and_belongs_to_many :moto
end
