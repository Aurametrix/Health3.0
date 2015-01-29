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
