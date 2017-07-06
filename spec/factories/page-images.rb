FactoryGirl.define do
  factory :page_with_image, :parent => :page_with_page_part do
    after(:create) { |p| p.image_pages.create(image: FactoryGirl.create(:image)) }
  end

  factory :blog_post_with_image, :parent => :blog_post do
    after(:create) { |b| b.image_pages.create(image: FactoryGirl.create(:image)) }
  end if defined? Refinery::Blog::Post

  factory :news_item_with_image, :parent => :news_item do
    after(:create) { |b| b.image_pages.create(image: FactoryGirl.create(:image)) }
  end if defined? Refinery::News::Item

  factory :products_product_with_image, :parent => :products_product do
    after(:create) { |b| b.image_pages.create(image: FactoryGirl.create(:image)) }
  end if defined? Refinery::Products::Product
end
