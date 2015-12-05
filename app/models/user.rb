class User < ActiveRecord::Base
    # 名前の長さ制限
    validates :name, :length => { :minimum => 8, :maximum => 20}
    has_many :microposts
end
