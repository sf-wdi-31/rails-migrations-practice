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

require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it { should have_db_column(:name).of_type(:string) }
  it { should have_db_column(:instructions).of_type(:string) }
  it { should have_db_column(:posted).of_type(:string) }
end
