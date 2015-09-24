module CsvImport
  class Validator

  	attr_reader :encoding, :content_type, :extension, :headers, :csv_header

  	def initialize(source, options = {})
      @source = source
      @formats = []
     
      @default_options = {
      	:headers => options[:headers] || true,
      	:header_converters => options[:header_converters] || :symbol,
      	:skip_blanks => options[:skip_blanks] || true,
      	:encoding => options[:encoding] || 'ISO-8859-1',
      	:converters => options[:converters] || :all
      }

      @limit_lines = options[:limit_lines]
      @extension = parse_extension(source) unless @source.nil?
      validate
    end

    def validate
	  CSV.foreach(@source, @default_options) do |row|
		begin
		  hash_val = Hash[row.headers[0..-1].zip(row.fields[0..-1])]
		rescue => e
		  return false
		end
	  end
    end

    private

    def parse_extension(source)
      case source
      when File
        return File.extname( source.path )
      else
        begin
          parsed = URI.parse(source)
          File.extname(parsed.path)
        rescue URI::InvalidURIError
          return ""
        end
      end
    end

  end
end