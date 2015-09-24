module CsvImport
  class Validator

    include CsvImport::AllCountry

  	attr_reader :encoding, :content_type, :extension, :headers, :csv_header

  	def initialize(source, options = {}, limit= nil)
      @source = source
      @formats = []
      @all_countries_name = []
      @all_countries_code = []
      @upload_status = true
      @customer_records_limit = limit || 0
     
      @default_options = {
		    :headers => options[:headers] || true,
      	:header_converters => options[:header_converters] || :symbol,
      	:skip_blanks => options[:skip_blanks] || true,
      	:encoding => options[:encoding] || 'ISO-8859-1',
      	:converters => options[:converters] || :all
      }
      country_list
      @limit_lines = options[:limit_lines]
      @extension = parse_extension(source) unless @source.nil?
      validate
    end

    def validate
      count = 0
  	  CSV.foreach(@source, @default_options) do |row|
    		begin
    		  hash_val = Hash[row.headers[0..-1].zip(row.fields[0..-1])]
          if @customer_records_limit > 0 && count < @customer_records_limit
              hash_val, @error_status, @can_upload = check_error_status(hash_val, countries_name,countries_code)
                @country = countries_name.index(hash_val[:country].to_s.downcase)
                if @can_upload
                  hash_val[:country] = countries_code[@country] if @country.present?
                  hash_val[:gender] = hash_val[:gender].to_s.downcase
                  hash_val[:email] = hash_val[:email].to_s.downcase
                  success_hash_val << hash_val
                  count += 1
                else
                  hash_val[:status] = @error_status                  
                  error_hash_value << hash_val
                end              
          else
            hash_val[:status] = "limit exceed"
            error_hash_value << hash_val
          end
    		rescue => e
    		  return false
    		end
  	  end
    end

    def check_error_status

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