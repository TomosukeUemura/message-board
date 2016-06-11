class Message < ActiveRecord::Base
    validates :name , length: { maximum: 20} , presene:true
    validates :body , length: { minimum: 2, maximum: 30 } presence: true
end
