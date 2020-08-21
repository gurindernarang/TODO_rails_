object false
collection @todos
node(:id) { |temp| temp.id.to_s }
attributes :title, :status

child :tags, :object_root => false do
  attributes :name
end