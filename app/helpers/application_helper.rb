module ApplicationHelper
  def profile_img(user)
    return image_tag(user.avatar, alt: user.name, :size => "150x150") if user.avatar?
    unless user.provider.blank?
      img_url = user.image_url
    else
      img_url = 'no_image.png'
    end
    image_tag(img_url, alt: user.name, :size => "40x40", class: 'card-img-top')
  end
end
