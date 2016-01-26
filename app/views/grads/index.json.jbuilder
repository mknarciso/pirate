json.array!(@grads) do |grad|
  json.extract! grad, :id, :name, :min, :max
  json.url grad_url(grad, format: :json)
end
