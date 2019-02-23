require 'csv'

CSV.generate do |csv|
  csv_column_names = %w(id title body)
  csv << csv_column_names
  @blogs.each do |blog|
    blog.entries.each do |entry|
      csv_column_values = [
        entry.id,
        entry.title,
        entry.body
      ]
      csv << csv_column_values
    end
  end
end