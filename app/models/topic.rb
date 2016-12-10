class Topic < ActiveRecord::Base
    has_many :replies
    
    def self.skip_attr
        return ["id","created_at","updated_at"]
    end
end
