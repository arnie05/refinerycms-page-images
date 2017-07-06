require 'spec_helper'

module Refinery
  module Products
    describe Post, type: :model do
      it "should not have images" do
        blog = FactoryGirl.create(:products_product)
        expect(blog.images.count).to eq(0)
      end

      it "should have images" do
        blog = FactoryGirl.create(:products_product_with_image)
        expect(blog.images.count).to eq(1)
      end
    end
  end
end if defined?(Refinery::Products::Product)
