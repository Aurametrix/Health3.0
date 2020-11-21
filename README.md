Learn the basics of Ruby
http://tryruby.org/

JS charts with Ruby, companion to groupdate
gem "chartkick"
chartkick.js

Examples
     <%= line_chart User.group_by_day(:created_at).count %>
     <%= pie_chart Goal.group("name").count %>
     <%= column_chart Task.group_by_day_of_week(:created_at).count %>

     <%= line_chart @goals.map{|goal|
         {:name => goal.name, :data => goal.feats.group_by_week(:created_at).count }
     } %>


     <%= javascript_include_tag "//www.google.com/jsapi", "chartkick" %>
     <%= javascript_include_tag "path/to/highcharts.js", "chartkick" %>


### Keeping track of node packages/ruby gems security issues
+ [bundler-audit](https://github.com/rubysec/bundler-audit)

### Newer features
 Merge 2 hashes
     { a: 1, b: 2 }.merge({ b: 3, c: 4 }, { d: 5 }) #=> {:a=>1, :b=>3, :c=>4, :d=>5}
     
endless range
    (1..).size => Infinity
    
### Mobile

[Turbolinks 5](https://www.youtube.com/watch?v=SWEts0rlezA&app=desktop)

### Interesting Projects

+ [RBS](https://developer.squareup.com/blog/the-state-of-ruby-3-typing/)
+ [Find Github e-mail](https://github.com/jemmaissroff/find_github_email)
+ [Loripsum](https://github.com/raulpopadineti/homebrew-loripsum) - Lorem Ipsum generator
