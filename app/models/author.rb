# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  name       :string
#  age        :integer
#  address    :string
#  email      :string
#  bio        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Author < ApplicationRecord
end
