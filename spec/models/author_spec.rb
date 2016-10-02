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

require 'rails_helper'

RSpec.describe Author, type: :model do
  it { should have_db_column(:name).of_type(:string) }
  it { should have_db_column(:age).of_type(:integer) }
  it { should have_db_column(:address).of_type(:string) }
  it { should have_db_column(:email).of_type(:string) }
  it { should have_db_column(:bio).of_type(:text) }
end
