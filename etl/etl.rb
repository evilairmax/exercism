class ETL
  def self.transform(input)
    result = {}
    input.map {|k| k[1].each { |x| result[x.downcase] = k[0] }  }
    result
  end
end