# == Schema Information
#
# Table name: ingredients
#
#  id         :integer          not null, primary key
#  name       :string
#  quantity   :float
#  brand      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  it { should have_db_column(:name) }
  it { should have_db_column(:quantity) }
  it { should have_db_column(:brand) }

  it { should have_db_column(:name).of_type(:string) }
  it { should have_db_column(:quantity).of_type(:float) }
  it { should have_db_column(:brand).of_type(:string) }
end
