class User < ApplicationRecord 
    devise :database_authenticatable, :registerable,
            :recoverable, :memorable, :validatable
    has_many :projects
end