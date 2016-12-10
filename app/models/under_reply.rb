class UnderReply < ActiveRecord::Base
    belongs_to :reply
    belongs_to :user
    
    def self.skip_attr
        return ["id","created_at","updated_at"]
    end
end
