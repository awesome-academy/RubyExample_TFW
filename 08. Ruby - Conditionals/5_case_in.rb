case {a: 1, b: "string test", c: 3}
in {a: Integer => m, b: String => str, c: Integer => n}
  p "matched: #{m}"
  p "matched #{str}"
  p "matched #{n}"
else
  p "not matched"
end
#"matched: 1"
#"matched string test"
#"matched 3"


case {a: 1, b: "string test", c: 3}
in a: Integer => m
  p "matched: #{m}"
else
  p "not matched"
end
#"matched: 1"

case ["a", 1, "b", "c", 2, "d", "e", "f", 3]
in [*pre, String => x, String => y, *post]
  p pre  #=> ["a", 1]
  p x    #=> "b"
  p y    #=> "c"
  p post #=> [2, "d", "e", "f", 3]
end

config = {db: {user: 'admin', password: 'abc123'}}
case config
in db: {user:} # matches subhash and puts matched value in variable user
  puts "Connect with user '#{user}'"
in connection: {username: }
  puts "Connect with user '#{username}'"
else
  puts "Unrecognized structure of config"
end
