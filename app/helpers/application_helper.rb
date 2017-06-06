module ApplicationHelper
  def markdown(content)

    options = {
        filter_html: true,
        hard_wrap: true,
        autolink: true,
        no_intra_emphasis: true,
        disable_indented_code_blocks: true,
        lax_html_blocks: true,
        strikethrough: true,
        superscript: true,
        fenced_code_blocks: true
    }

    renderer = Redcarpet::Render::HTML.new(options)
    Redcarpet::Markdown.new(renderer, options).render(content).html_safe

  end
end