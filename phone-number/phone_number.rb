class PhoneNumber
  def self.clean(phone)
    n = phone.scan(/[0-9]/)
    if [10, 11].include?(n.length)
      return nil if (n.length == 11 && n[0].to_i != 1)
      n = n.last(10)
      n.join if n[0].to_i > 1 && n[3].to_i > 1
    else
      nil
    end
  end
end
