<%= form_for(@task) do |f| %>
  <%= f.label :title %>
  <%= f.text_field :title %>
  <%= f.label :details %>
  <%= f.text_field :details %>
  <%= f.submit %>
<% end %>
