defmodule TwitterCloneWeb.PostLive.PostComponent do
  use TwitterCloneWeb, :live_component

  def render(assigns) do
    ~L"""
    <div id="post-<%= @post.id%>" class="post">
      <div class="row">
        <div class="col-12 col-md-2">
          <div class="post-avatar"></div>
        </div>
        <div class="col-12 col-md-10 post-body">
          <b> @<%= @post.username %></b>
          <br/>
           <%= @post.body %>
        </div>
        <div class="row">
        <div class="col-6">
          <i class="fas fa-camera"></i> <%= @post.likes_count %>
        </div>
        <div class="col-6">
          <i class="fas fa-retweet"></i> <%= @post.repost_count %>
        </div>
      </div>
      </div>

    </div>
    """
  end
end
