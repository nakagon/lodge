class ArticleMailer < ActionMailer::Base
	include ApplicationHelper
  default from: ENV["MAIL_SENDER"]

  def article_to_user_tag(article, user, new_article)

    @user        = user
    @article     = article
    @new_article = new_article
    mail(
      to:      @user.email,
      subject: '【Lodge】あなたがフォローしたタグに新しい投稿があります！',
    ) do |format|
      format.html
  	end
  end
end
