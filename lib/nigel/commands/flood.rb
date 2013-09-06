module Nigel
  module Commands
    class Flood
      def self.process(options)

        Google::Search::Image.new(
          query: 'Nigel Thornberry').each_with_index do |image, i|

          threads = []

          if(image.uri.include? '.gif')

            puts "Nigel spotted at #{ image.uri }!"
            
            threads << self.fetch(image.uri, "#{ i }.gif")
          end

          threads.each(&:join)
        end
      end

      private

      def self.fetch(uri, name)
        Thread.new do
          File.open(name, "wb") do |saved_file|
            open(uri, 'rb') do |read_file|
              saved_file.write(read_file.read)
            end
          end
        end
      end
    end
  end
end
