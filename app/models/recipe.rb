# == Schema Information
#
# Table name: recipes
#
#  id           :integer          not null, primary key
#  name         :string
#  instructions :string
#  posted       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Recipe < ApplicationRecord
end
