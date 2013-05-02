require 'html/pipeline'

module MarkdownHandler

  def self.call(template)

    erb = ActionView::Template.registered_template_handler(:erb)
    source = erb.call(template)
    <<-SOURCE

    pipeline = HTML::Pipeline.new [
      HTML::Pipeline::MarkdownFilter
    ]

    result = pipeline.call(begin;#{source};end)
    result[:output].to_s
    SOURCE

  end
end

ActionView::Template.register_template_handler :md, MarkdownHandler
ActionView::Template.register_template_handler :markdown, MarkdownHandler
