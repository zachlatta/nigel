module Nigel
  module Commands
    class Flood
      def self.process(options)

        File.open('images.html', 'w+') do |file|

          Google::Search::Image.new(
            query: 'Nigel Thornberry').each_with_index do |image, i|

            if(image.uri.include? '.gif')

              puts "Nigel spotted at #{ image.uri }!"
              File.open("#{ i }.gif", "wb") do |saved_file|

                open(image.uri, 'rb') do |read_file|
                  saved_file.write(read_file.read)
                end
              end
            end
          end
        end
      end
    end
  end
end
