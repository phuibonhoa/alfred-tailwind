module Alfred
  class Feedback
    class TailwindItem < Item

      attr_accessor :group

      def initialize(title, opts = {})
        super
        @group = opts[:group]
        @matcher = :all_match?
      end

      def all_match?(query)
        query = query.join(' ') if query.is_a?(Array)
        return true if query.nil? or query.strip == ''

        match = true

        query.split(/\s/).each do |query_part|
          next if query_part == ''
          match = false if [group, title, subtitle].compact.join(' ').gsub('-', ' ') !~ /#{query_part}/i
        end

        match
      end

      def search_rank(query)
        query = query.join(' ') if query.is_a?(Array)
        return 1 if query.nil? || query.strip == ''

        match = 1

        query.split(/[\s\-]/).each do |query_part|
          next if query_part.strip == ''

          sanitized_group = group&.gsub('-', ' ')
          sanitized_subtitle = subtitle&.gsub('-', ' ')
          sanitized_title = title&.gsub('-', ' ')

          return nil if [sanitized_group, sanitized_subtitle, sanitized_title].compact.join(' ') !~ /#{query_part}/i

          match += query_part.size if sanitized_group =~ /#{query_part}/i && sanitized_group
          match += 10 * query_part.size if sanitized_subtitle =~ /#{query_part}/i && sanitized_subtitle
          match += 10 * query_part.size if sanitized_subtitle =~ /^#{query_part}/i && sanitized_subtitle
          match += 10 * query_part.size if sanitized_subtitle =~ /^#{query_part}$/i && sanitized_subtitle
          match += 200 * query_part.size if subtitle =~ /^#{query_part}/i && subtitle
          match += 200 * query_part.size if subtitle =~ /^#{query_part}$/i && subtitle
          match += 100 * query_part.size if sanitized_title =~ /#{query_part}/i
          match += 100 * query_part.size if sanitized_title =~ /^#{query_part}/i
          match += 300 * query_part.size if title =~ /^#{query_part}/i
          match += 300 * query_part.size if title =~ /^#{query_part}$/i
          match -= title.size
        end

        match
      end

    end
  end
end