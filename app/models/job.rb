class Job < ApplicationRecord
  has_many :jtags

  def match_sol
    Soldier.all.map do |s|
      [jtags.to_a.count{|j|  s.stags.find{|t| t.value == j.value && t.key == j.key}},jtags.length,s.attributes]
    end.select{|a,_,_|a > 0}.sort_by{|_,n|n}
  end
end
