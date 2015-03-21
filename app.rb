require "bundler/setup"
require "sinatra"

configure :production do
  set :server, :puma
end

get "/" do
  @voice = params[:v] || "alice"
  @message = params[:m] || "おはよう！"
  erb :index
end

__END__

@@index
<Response>
<Say voice="<%= @voice %>" language="ja-JP"><%= @message %></Say>
</Response>

