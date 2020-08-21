object @todo
node(:id) { |temp| temp.id.to_s }
attributes :id,:title, :status

child :tags, :object_root => false do
  attributes :name
end