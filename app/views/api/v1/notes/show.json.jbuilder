json.note do
  json.id         @note.id
  json.title      @note.title
  json.body_html  @note.body_html
  json.created_at @note.created_at
  json.updated_at @note.updated_at
end
