BRANCH = {
  :alt => {
    "(" => [:seq, :_alt_1],
    :ENUM => [:seq, :_alt_1],
    :HEX => [:seq, :_alt_1],
    :O_ENUM => [:seq, :_alt_1],
    :O_RANGE => [:seq, :_alt_1],
    :RANGE => [:seq, :_alt_1],
    :STRING1 => [:seq, :_alt_1],
    :STRING2 => [:seq, :_alt_1],
    :SYMBOL => [:seq, :_alt_1],
  },
  ...
  :declaration => {
    "@pass" => [:pass],
    "@terminals" => ["@terminals"],
  },
  ...
}
