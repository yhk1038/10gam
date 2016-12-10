class Reply < ActiveRecord::Base
    belongs_to :topic
    belongs_to :user
    has_many :under_replies
    
    def self.skip_attr
        return ["id","created_at","updated_at"]
    end
end
