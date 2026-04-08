class User
  attr_reader :id, :name, :role

  def initialize(id:, name:, role:)
    @id = id
    @name = name
    @role = role
  end

  def can_book?
    ["student", "assistant"].include?(@role)
  end
end