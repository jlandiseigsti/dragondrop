class User < ApplicationRecord
    has_many :Cards, :dependent => :delete_all
end
