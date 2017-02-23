<%= render "/layouts/errors", :object => @nation %>
<div class="well">
  <%= form_for [@user, Nation.new] do |f| %>
  <div class="form-group">
  <%= f.label :name %>
  <%= f.text_field :name %>
  </div>
  <div class="form-group">
  <%= f.select_tag(:culture) %>
  <%= f.options_for_select([["Steam Technology", 1], ["Magic", 2], ["Communing with Spirits",3]])  %>
  </div>
  <% end %>
</div>
