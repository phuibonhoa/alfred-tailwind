require 'tailwind_data'

class Tailwind
  def self.load_feedback(feedback)
    TailwindData::CLASSES.each do |tw|
      feedback.add_tailwind_item(
        title: tw[:title],
        subtitle: tw[:subtitle],
        group: tw[:group],
      )
    end
  end
end