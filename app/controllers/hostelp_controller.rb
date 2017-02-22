class HostelpController < ApplicationController
    before_action :authenticate_user!
    # ログインしていない時にログイン画面に飛ばす。
end
