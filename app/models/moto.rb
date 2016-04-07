class Moto < ActiveRecord::Base
 	has_and_belongs_to_many :couleurs
end