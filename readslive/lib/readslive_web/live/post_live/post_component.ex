defmodule ReadsliveWeb.PostLive.PostComponent do
  use ReadsliveWeb, :live_component

  def render(assigns) do
    ~L"""
    <div id="post-<%= @post.id %>" class="post">
      <div class="post_body"><%= @post.body %></div>
      <span class="like_count"><%= @post.likes_count %></span>
      <span class="repost_count"><%= @post.repost_count %></span>
      <div class="actions"></div>

    </div>
    """
    # <%=live_patch to: Routes.post_index_path(@socket, :edit, @post.id ) %>
  end
end
