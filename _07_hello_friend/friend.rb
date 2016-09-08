class Friend
  def greeting(name=nil)
    person = ""
    unless name.nil?
      person = ", " << name
    end
    "Hello#{person}!"
  end
end
