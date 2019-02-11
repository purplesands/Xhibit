json.extract! review, :id, :content, :rating, :user, :location, :created_at, :updated_at
json.url review_url(review, format: :json)
