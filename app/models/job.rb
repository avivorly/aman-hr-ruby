class Job < ApplicationRecord
  has_many :jtags

  def match_sol
    Soldier.all.map do |s|
      [jtags.to_a.count{|j|  s.stags.find{|t| t.value == j.value && t.key.gsub(/[0-9]/,'') == j.key.gsub(/[0-9]/,'') && j.value != ''}},jtags.where('value != ""').count,s.attributes]
    end.select{|a,_,_|a > 0}.sort_by{|_,n|n}
  end
end
