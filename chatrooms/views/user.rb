# To construct a name, let’s simply strip off the domain part from the user’s email (of course, in a real app you’d want to allow them entering a name upon registration or at the “Edit profile” page)

class User
  def name
    email.split('@')[0]
  end
end
