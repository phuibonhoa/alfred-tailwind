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

          score = query_part.size

          match += score if sanitized_group =~ /#{query_part}/i && sanitized_group

          if sanitized_subtitle
            match += 10 * score if sanitized_subtitle =~ /#{query_part}/i
            match += 10 * score if sanitized_subtitle =~ /^#{query_part}/i
            match += 10 * score if sanitized_subtitle.split(' ').any? { |part| part =~ /^#{query_part}$/i  }
          end

          if subtitle
            match += 100 * score if subtitle =~ /^#{query_part}/i
            match += 100 * score if subtitle.split(' ').any? { |part| part =~ /^#{query_part}$/i  }
          end

          match += 100 * score if sanitized_title =~ /#{query_part}/i
          match += 100 * score if sanitized_title =~ /^#{query_part}/i
          match += 100 * score if sanitized_title.split(' ').any? { |part| part =~ /^#{query_part}$/i  }

          match += 300 * score if title =~ /^#{query_part}/i
          match += 300 * score if title =~ /^#{query_part}$/i

          match -= 100 * title.size # prioritize shorter tailwind classes... m-2 precedes mb-2
        end

        match
      end

    end
  end
end