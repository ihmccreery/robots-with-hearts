class Page
  IGNORE_BASENAMES = %w(. ..).freeze

  def self.page_files
    basenames.map{|basename| new_file(basename)}
  end

  private

  def self.basenames
    Dir.entries(path) - IGNORE_BASENAMES
  end

  def self.new_file(basename)
    File.new(path.join(basename))
  end

  def self.path
    Rails.root.join('app', 'views', HighVoltage.content_path)
  end
end
