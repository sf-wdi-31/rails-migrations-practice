# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  phone      :integer
#  address    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_db_column(:name).of_type(:string) }
  it { should have_db_column(:phone).of_type(:integer) }
  it { should have_db_column(:address).of_type(:string) }

  it { should have_db_column(:name).with_options(null: false) }
  it { should have_db_column(:admin).of_type(:boolean).with_options(default: false) }
end
