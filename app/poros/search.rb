class Search
  attr_reader :total_members

  def initialize(data)
    @total_members = data.count
    @data = data
  end

  def make_members
    @data.map do |member|
      Member.new(member)
    end
  end
end
