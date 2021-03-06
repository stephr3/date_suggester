class Tag < ActiveRecord::Base
  has_and_belongs_to_many(:date_ideas)
  validates(:name, {:presence => true, :length => {:maximum => 20}})
  before_save(:titlecase_tag_name)

private

  def titlecase_tag_name 
    self.name=(name.titlecase)
  end
end
