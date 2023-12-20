($LOAD_PATH << File.expand_path("..", __FILE__)).uniq!
require 'rubygems' unless defined? Gem
require "bundle/bundler/setup"
require "alfred"
require 'feedback_extension'
require 'tailwind'


Alfred.with_friendly_error do |alfred|
  alfred.with_rescue_feedback = true
  alfred.with_cached_feedback do
    use_cache_file(expire: 604800)
  end

  # prepend ! in query to refresh
  is_refresh = false
  if ARGV[0] == '!'
    is_refresh = true
    ARGV.shift
  end

  if !is_refresh && feedback = alfred.feedback.get_cached_feedback
    # cached feedback is valid
    puts feedback.to_alfred(ARGV)
  else
    # ... generate_feedback as usually
    feedback = alfred.feedback
    Tailwind.load_feedback(feedback)
    feedback.put_cached_feedback
    puts feedback.to_alfred(ARGV)
  end
end

