class ChangeWeight
    def self.runcheck(weight, type)
    if type == "kg"
    ans1 = weight * 2.2046 + "pounds" &&
    ans2 = weight * 0.15747 + "stone"
    elsif type == "stone"
        ans1 = weight / 0.15747 + "Kg"
        ans2 = weight * 14.000 + "pounds"
    else
        ans1 = weight / 2.2046 + "Kg"
        ans2 = weight  * 0.071429 + "pounds"
    break
    return ans1 && ans2
    end
   end