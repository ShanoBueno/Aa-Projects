<% action = (cat.persisted? ? cat_url(cat) : cats_url) %>
<% method = (cat.persisted? ? :patch : :post) %>

<form action="<%= action %>" method="post">
  <input type="hidden" name="_method" value="<%= method %>">
    
  <label for="dog_name">Name:</label>
  <input
    type="text"
    name="dog[name]"
    id="dog_name"
    value="<%cat.name%>">

<label for="dog_birth_date">Birthdate:</label>
<input
  type="date"
  name="dog[birth_date]
  id="dog_birht_date"
  value="<% dog.brith_date %>">

<label for="dog_breed">Breed</label>
<select name="dog[breed]" id="dog_breed">
<option disabled selected>--Select Breed</option>
<% Dog::BREEDS.each do |breed| %>
  <option
  <%= dog.breed == breed ? "selected : ""%>
  value="<%= breed %>">
  <%option>
  <%end %>
  </select>
  <br>

  




