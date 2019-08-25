FactoryBot.define do
  factory :post do
    caption {"This is a test image"}
    # image Rack::Test::UploadedFile.new(Rails.root + 'spec/files/images/test1.jpg', 'image/jpg')
    after(:build) do |post|
      post.image.attach(io: File.open(Rails.root.join('spec', 'files', 'images', 'test1.jpg')), filename: 'test1.jpg', content_type: 'image/jpg')
    end
  end
end
