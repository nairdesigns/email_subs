class User < ApplicationRecord 
    devise :database_authenticatable, :registerable,
            :recoverable, :memorable, :validatable
    #devise not working
    has_many :projects
end