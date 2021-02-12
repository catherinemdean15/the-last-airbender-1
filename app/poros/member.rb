class Member
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation,
              :photo

  def initialize(member_info)
    @name = member_info[:name]
    @photo = member_info[:photoUrl]
    @allies = member_info[:allies].to_sentence
    @enemies = member_info[:enemies].to_sentence
    @affiliation = member_info[:affiliation]
  end
end
