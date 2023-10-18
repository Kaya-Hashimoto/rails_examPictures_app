class PostMailer < ApplicationMailer
  def post_mail(post_user)
    @post_user = post_user
    mail(to: @post_user, subject: "投稿確認メール")
  end
end
