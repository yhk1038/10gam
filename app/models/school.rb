class School < ActiveRecord::Base
    has_many :users
    
    def self.skip_attr
        return ["id","created_at","updated_at"]
    end
end
