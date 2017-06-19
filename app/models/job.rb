class Job < ApplicationRecord
  has_many :jtags

  Soldier.all.sort_by do |s|
    jtags.count{|j|  s.stags.find{|t| t.value == j.value && t.key == j.key}}
  end.reverse

end
