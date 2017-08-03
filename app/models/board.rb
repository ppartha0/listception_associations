# == Schema Information
#
# Table name: boards
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Board < ApplicationRecord
    #  id: 1,
    #  title: "Books to read",
    #  description: "John Blake Publishing",
    #  created_at: Wed, 02 Aug 2017 23:29:52 UTC +00:00,
    #  updated_at: Wed, 02 Aug 2017 23:29:52 UTC +00:00>
    has_many :lists, :class_name => "List", :foreign_key => "board_id"
    
end
