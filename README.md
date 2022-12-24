Learn the basics of Ruby
http://tryruby.org/

+ [Why is not Ruby 3 faster?](https://www.fastruby.io/blog/ruby/performance/why-wasnt-ruby-3-faster.html)

(Ruby 3, Concurrency and the Ecosystem)[https://kirshatrov.com/2021/01/06/ruby-concurrency-and-ecosystem/]
[3.2.0](https://docs.ruby-lang.org/en/master/NEWS_md.html#label-NEWS+for+Ruby+3.2.0)


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
    
    
[Garbage collection](https://jemma.dev/blog/gc-mark-and-sweep)

[MAking gems more secure](https://blog.rubygems.org/2022/06/13/making-packages-more-secure.html)
  
    
### Mobile

[Turbolinks 5](https://www.youtube.com/watch?v=SWEts0rlezA&app=desktop)

### Interesting Projects

+ [RBS](https://developer.squareup.com/blog/the-state-of-ruby-3-typing/)
+ [Find Github e-mail](https://github.com/jemmaissroff/find_github_email)
+ [Loripsum](https://github.com/raulpopadineti/homebrew-loripsum) - Lorem Ipsum generator
+ [Automating Voronoy diagrams](https://github.com/mike-bourgeous/mb-geometry)
+ [TenderJIT](https://github.com/tenderlove/tenderjit) -  JIT compiler for Ruby written in Ruby
+ [Natalie](https://github.com/seven1m/natalie) - ruby that compiles to C++
+ [blog server](https://github.com/KrauseFx/krausefx.com) - [Life database](https://krausefx.com//blog/how-i-put-my-whole-life-into-a-single-database) 
+ [Clever Algorithms](https://github.com/clever-algorithms/CleverAlgorithms) - Nature-Inspired Programming Recipes
+ [Ruby Delights Built Into The Language](https://technology.doximity.com/articles/ruby-delights-built-into-the-language)
