module ApplicationHelper
  require 'redcarpet'
  require 'rouge'
  require 'rouge/plugins/redcarpet'

  class HTML < Redcarpet::Render::HTML
    include Rouge::Plugins::Redcarpet
  end


  def markdown(content)

    render_options = {
      filter_html: true,
      hard_wrap: true,
      link_attributes: { rel: 'nofollow' }
    }

    extensions = {
      autolink: true,
      fenced_code_blocks: true,
      lax_spacing: true,
      no_intra_emphasis: true,
      strikethrough: true,
      superscript: true
    }
    renderer = HTML.new(render_options)  
    markdown = Redcarpet::Markdown.new(renderer, extensions)
    markdown.render(content)
  end

  def tag_cloud(tags, classes)
    max = tags.max_by(&:count)
    tags2 = tags.order('count desc')
    tags2.each do |tag|
      puts tag.name
      index = tag.count.to_f / max.count * (classes.size - 1)
      yield(tag, classes[index.round])
    end
  end

end