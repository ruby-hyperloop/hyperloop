require 'paggio'

describe Paggio::HTML do
  it 'builds an element' do
    html = Paggio.html! do
      div
    end

    expect(html.to_s).to eq("<div>\n</div>\n")
  end

  it 'builds an element with text content' do
    html = Paggio.html! do
      div "foo bar"
    end

    expect(html.to_s).to eq("<div>\n\tfoo bar\n</div>\n")

    html = Paggio.html! do
      div do
        "foo bar"
      end
    end

    expect(html.to_s).to eq("<div>\n\tfoo bar\n</div>\n")
  end

  it 'builds an element with attributes' do
    html = Paggio.html! do
      div class: :wut
    end

    expect(html.to_s).to eq("<div class=\"wut\">\n</div>\n")
  end

  it 'builds deeper trees' do
    html = Paggio.html! do
      div do
        span do
          "wut"
        end
      end
    end

    expect(html.to_s).to eq("<div>\n\t<span>\n\t\twut\n\t</span>\n</div>\n")
  end

  it 'sets classes with methods' do
    html = Paggio.html! do
      div.nice.element
    end

    expect(html.to_s).to eq("<div class=\"nice element\">\n</div>\n")
  end

  it 'nests when setting classes' do
    html = Paggio.html! do
      div.nice.element do
        span.nicer 'lol'
      end
    end

    expect(html.to_s).to eq("<div class=\"nice element\">\n\t<span class=\"nicer\">\n\t\tlol\n\t</span>\n</div>\n")
  end

  it 'joins class name properly' do
    html = Paggio.html! do
      i.icon[:legal]
    end

    expect(html.to_s).to eq("<i class=\"icon-legal\">\n</i>\n")

    html = Paggio.html! do
      i.icon.icon[:legal, :shmegal]
    end

    expect(html.to_s).to eq("<i class=\"icon icon-legal-shmegal\">\n</i>\n")
  end

  it 'sets the id' do
    html = Paggio.html! do
      div.omg!
    end

    expect(html.to_s).to eq("<div id=\"omg\">\n</div>\n")
  end

  it 'chains ids and classes' do
    html = Paggio.html! do
      div.omg!.wut
    end

    expect(html.to_s).to eq("<div id=\"omg\" class=\"wut\">\n</div>\n")
  end

  it 'chains ids and attributes' do
    html = Paggio.html! do
      div.omg! class: :wut
    end

    expect(html.to_s).to eq("<div id=\"omg\" class=\"wut\">\n</div>\n")
  end

  it 'chains classes and attributes' do
    html = Paggio.html! do
      div.wut width: 80
    end

    expect(html.to_s).to eq("<div width=\"80\" class=\"wut\">\n</div>\n")
  end

  it 'overrides with id from attributes' do
    html = Paggio.html! do
      div.omg! id: 'ikr'
    end

    expect(html.to_s).to eq("<div id=\"ikr\">\n</div>\n")
    expect(html.to_s).not_to eq("<div id=\"omg\">\n</div>\n")
  end

  it 'coalesces classes from attributes' do
    html = Paggio.html! do
      div.wut class: 'rofl'
    end

    expect(html.to_s).to eq("<div class=\"rofl wut\">\n</div>\n")
    expect(html.to_s).not_to eq("<div class=\"wut\" class=\"rofl\">n")

    html = Paggio.html! do
      div.wut class: 'rofl idk'
    end

    expect(html.to_s).to eq("<div class=\"rofl idk wut\">\n</div>\n")
    expect(html.to_s).not_to eq("<div class=\"wut\" class=\"rofl idk\">n")
  end

  it 'coalesces multiple classes from attributes' do
    html = Paggio.html! do
      div.wut classes: %w[rofl idk]
    end

    expect(html.to_s).to eq("<div class=\"rofl idk wut\">\n</div>\n")
    expect(html.to_s).not_to eq("<div class=\"wut\" classes=\"[&quot;rofl&quot;, &quot;idk&quot;]\">\n</div>\n")
  end

  it 'joins class name properly with class attributes' do
    html = Paggio.html! do
      i.icon(class: 'illegal')[:legal]
    end

    expect(html.to_s).to eq("<i class=\"illegal icon-legal\">\n</i>\n")
  end
end
