paggio
======
A Ruby DSL to generate HTML and CSS.

HTML
----
Inspired by markaby with some specialized additions for certain kinds of
elements.

```ruby
require 'paggio/now'

# html! avoids outputting the doctype and <html> tags
html! do
  div.content! do
    p <<-EOS
      I like trains
    EOS
  end
end
```

This will output:

```html
<div id="content">
  <p>
    I like trains.
  </p>
</div>
```

CSS
---
Inspired by SCSS with some nice CSS unit handling monkey-patching.

```ruby
require 'paggio/now'

css do
  rule '.content' do
    background :black
    color :white

    rule '&:hover' do
      background :white
      color :black
    end

    rule '.stuff' do
      font size: 50.px
    end
  end
end
```

This will output:
```css
.content {
        background: black;
        color: white;
}

.content .stuff {
        font-size: 50px;
}

.content:hover {
        background: white;
        color: black;
}
```

With Sinatra
------------
Because why not.

```ruby
require 'sinatra'
require 'paggio'

get '/' do
  Paggio.html do
    head do
      title "Yo, I'm on Sinatra"

      style do
        rule 'html', 'body' do
          width  100.%
          height 100.%

          # reset some stuff
          margin  0
          padding 0
          position :absolute
          top 0

          background :black
          color :white
        end

        rule '#content' do
          width 50.%
          height 100.%

          margin 0, :auto

          border left:  [3.px, :solid, :white],
                 right: [3.px, :solid, :white]

          text align: :center
          font size: 23.px

          rule '& > div' do
            padding 20.px
          end
        end
      end
    end

    body do
      div.content! do
        div 'Hello world!'
      end
    end
  end
end
```

With Markdown
-------------
You'll need the `kramdown` gem.

```ruby
require 'paggio/now'
require 'paggio/markdown'

html do
  markdown <<-MD
    Here comes a bunch of **shitty** markdown.
  MD
end
```

Since *paggio* does internal heredoc indentation pruning, you don't have to
worry about that.

With Opal
---------
You'll need the `--pre sourcify` gem and the `opal` gem.

```ruby
require 'paggio/now'
require 'paggio/script'

html do
  head do
    script src: 'js/opal.js'
    script src: 'js/browser.js'

    script do
      alert 'Yo dawg'
    end
  end
end
```

Calling local methods inside the DSLs
-------------------------------------
Don't you just love `instance_eval`? Well, I do, but sometimes it's not the
best tool for the job, in fact you cannot call local methods or access instance
variables inside the DSLs since they're evaluated in another context.

Well, fear not, doing that is as easy as adding a parameter to the DSL block.

```ruby
class Page
  def initialize(title, content)
    @title   = title
    @content = content
  end

  def to_html
    Paggio.html do |_|
      _.html do
        _.head do
          title @title
        end

        _.body do
          @content
        end
      end
    end
  end
end

puts Page.new("foo", "bar").to_html
```

Why?
----
Because HAML, SCSS and CoffeeScript are too mainstream.

On a serious note, why have templating systems and syntax sugar when you can
just write Ruby?
