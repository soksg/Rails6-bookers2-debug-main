# README
## DMMWEBCAMP学習コンテンツ 応用課題２です

  <% if @book.errors.any? %>
  <div id="error_explanation">
    <h3><%= @book.errors.count %> errors prohibited this obj from being saved:</h3>
    <ul>
      <% @book.errors.full_messages.each do |message| %>
        <li><%= message %></li>
      <% end %>
    </ul>
  </div>
<% end %>

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
