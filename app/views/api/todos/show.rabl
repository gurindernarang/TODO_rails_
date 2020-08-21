object @todo
node(:id) { |temp| temp.id.to_s }
attributes :id, :title, :status

child :tags do
  attributes :name
end
