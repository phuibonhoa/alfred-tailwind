require 'tailwind_item'

module Alfred

  class Feedback

    def add_tailwind_item(opts = {})
      raise ArgumentError, "Feedback item must have title!" if opts[:title].nil?
      @items << TailwindItem.new(opts[:title], opts)
    end


    def to_alfred(with_query = '', items = @items)
      document = REXML::Element.new("items")
      @items.sort!

      if with_query.empty?
        items.each do |item|
          document << item.to_xml
        end
      else
        rankings = items.each_with_object({}) { |item, hash|
          rank = item.search_rank(with_query)
          hash[item] = rank if !rank.nil?
        }

        rankings.sort_by { |k, v| [-1 * v, k.title] }.map(&:first).each do |item|
          document << item.to_xml
        end
      end

      document.to_s
    end
  end
end