require 'spec_helper'

module Refinery
  module News
    describe Item, type: :model do
      it "should not have images" do
        news = FactoryGirl.create(:news_item)
        expect(news.images.count).to eq(0)
      end

      it "should have images" do
        news = FactoryGirl.create(:news_item_with_image)
        expect(news.images.count).to eq(1)
      end
    end
  end
end if defined?(Refinery::News::Item)
