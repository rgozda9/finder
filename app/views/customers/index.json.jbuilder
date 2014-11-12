json.array!(@customers) do |customer|
  json.extract! customer, :id, :full_name, :phone, :email, :image, :notes
  json.url customer_url(customer, format: :json)
end
