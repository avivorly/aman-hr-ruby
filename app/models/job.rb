class Job < ApplicationRecord
  has_many :jtags

  def match_sol
    Soldier.all.map do |s|
      [s,jtags.to_a.count{|j|  s.stags.find{|t| t.value == j.value && t.key == j.key}}]
    end.sort_by{|_,n|n}.reverse
  end



end
