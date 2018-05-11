#--
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++

class Paggio; class CSS < BasicObject

class Definition < BasicObject
  Style = ::Struct.new(:name, :value, :important)

  def initialize(&block)
    @style = []

    if block.arity == 0
      instance_exec(&block)
    else
      block.call(self)
    end if block
  end

  def empty?
    @style.empty?
  end

  def each(&block)
    @style.each(&block)
  end

  def gradient(*args)
    Gradient.new(*args)
  end

  def url(value)
    "url(#{value.to_s.inspect})"
  end

  %w[url blur brightness rotate contrast grayscale invert opacity saturate sepia].each {|name|
    define_method name do |value|
      "#{name}(#{value})"
    end
  }

  def rgb(r, g, b)
    "rgb(#{r}, #{g}, #{b}, #{a})"
  end

  def rgba(r, g, b, a)
    "rgba(#{r}, #{g}, #{b}, #{a})"
  end

  %w[scale skew translate].each {|name|
    define_method name do |a, b = nil|
      if b
        "#{name}(#{a}, #{b})"
      else
        "#{name}(#{a})"
      end
    end
  }

  %w[translateX translateY translateZ rotateX rotateY rotateZ skewX skewY scaleX scaleY].each {|name|
    define_method name do |value|
      "#{name}(#{value})"
    end
  }

  def background(*args)
    if Gradient === args.first
      if args.length > 1
        raise NotImplementedError, "multiple gradients not implemented yet"
      end

      args.first.each {|s|
        style s.name || 'background-image', s.value
      }
    else
      if ::Hash === args.first
        args.first.each {|sub, value|
          style "background-#{sub}", value
        }
      else
        style :background, args
      end
    end
  end

  def border(*args)
    if ::Hash === args.first
      if args.length == 1
        options = args.first
      end

      options.each {|name, value|
        case name
        when :top, :bottom, :left, :right
          if ::Hash === value
            value.each {|n, v|
              style "border-#{name}-#{n}", v
            }
          else
            style "border-#{name}", value
          end

        when :radius
          if ::Hash === value
            value.each {|horizontal, value|
              value.each {|vertical, value|
                style "-moz-border-radius-#{horizontal}#{vertical}", value
                style "-webkit-border-#{horizontal}-#{vertical}-radius", value
                style "border-#{horizontal}-#{vertical}-radius", value
              }
            }
          else
            style '-moz-border-radius', value
            style '-webkit-border-radius', value
            style 'border-radius', value
          end

        when :color
          if ::Hash === value
            value.each {|name, value|
              style "border-#{name}-color", value
            }
          else
            style 'border-color', value
          end

        else
          style "border-#{name}", value
        end
      }
    else
      style :border, args
    end
  end

  def box(options)
    if ::Hash === options
      options.each {|name, value|
        case name
        when :shadow
          if ::Array === value
            if ::Array === value[0]
              value = value.map { |v| v.join ' ' }.join(', ')
            else
              value = value.join ' '
            end
          end

          style '-moz-box-shadow', value
          style '-webkit-box-shadow', value
          style 'box-shadow', value

        else
          style "box-#{name}", value
        end
      }
    else
      style :box, options
    end
  end

  def opacity(value)
    style 'opacity', value
    style '-moz-opacity', value

    style '-ms-filter', %Q{"progid:DXImageTransform.Microsoft.Alpha(Opacity=#{(value * 100).to_i})"}
    style 'filter', "alpha(opacity=#{(value * 100).to_i})"
  end

  def animation(*args)
    if Hash === args.first
      if args.length == 1
        options = args.first
      end

      options.each {|name, value|
        style "-webkit-animation-#{name}", value
        style "animation-#{name}", value
      }
    else
      style 'animation', args
      style '-webkit-animation', args
    end
  end

  def transition(*args)
    style 'transition', args
    style '-webkit-transition', args
    style '-moz-transition', args
  end

  def user_select(*args)
    style 'user-select', args
    style '-webkit-user-select', args
    style '-moz-user-select', args
    style '-ms-user-select', args
  end

  def transform(*args)
    style 'transform', args
    style '-webkit-transform', args
    style '-moz-transform', args
    style '-ms-transform', args
    style '-o-transform', args
  end

  def filter(*args)
    style 'filter', args
    style '-webkit-filter', args
    style '-moz-filter', args
    style '-ms-filter', args
    style '-o-filter', args
  end

  def method_missing(name, *args, &block)
    name = name.to_s

    if name.end_with? ?!
      name = name[0 .. -2]

      @important = true
      __send__ name, *args, &block
      @important = false

      return
    end

    if args.length == 1
      argument = args.first

      if ::Hash === argument
        argument.each {|sub, value|
          style "#{name}-#{sub}", value
        }
      else
        style name, argument
      end
    else
      style name, args.join(' ')
    end

    @important = false

    self
  end

  def style(name, value = nil, important = @important)
    if ::Array === value
      value = value.join ' '
    end

    if Style === name
      @style << name
    else
      @style << Style.new(name, value, important)
    end
  end

  def style!(name, value = nil)
    style(name, value, true)
  end

  class Gradient
    # TODO: all of it, seriously
    def initialize(*args)
      options = ::Hash === args.last ? args.pop : {}

      @to   = options[:to]
      @from = options[:from]

      if @to && !@from
        @from = other(@to)
      elsif @from && !@to
        @to = other(@from)
      end

      @start = args.shift
      @end   = args.shift
    end

    def each(&block)
      block.call style("-moz-linear-gradient(#@to, #@start 0%, #@end 100%)")

      if horizontal?
        block.call style("-webkit-gradient(linear, #@from top, #@to top, color-stop(0%, #@start), color-stop(100%, #@end))")
      else
        block.call style("-webkit-gradient(linear, left #@from, left #@to, color-stop(0%, #@start), color-stop(100%, #@end))")
      end

      block.call style("-webkit-linear-gradient(#@to, #@start 0%, #@end 100%)")
      block.call style("-o-linear-gradient(#@to, #@start 0%, #@end 100%)")
      block.call style("-ms-linear-gradient(#@to, #@start 0%, #@end 100%)")
      block.call style("linear-gradient(to #@to, #@start 0%, #@end 100%)")
    end

    def horizontal?
      @to == :left || @to == :right
    end

    def vertical?
      @to == :top || @to == :bottom
    end

  private
    def other(side)
      case side
      when :left   then :right
      when :right  then :left
      when :top    then :bottom
      when :bottom then :top
      end
    end

    # FIXME: use default args
    def style(*args)
      if args.length == 1
        Style.new(nil, args.first)
      else
        Style.new(*args)
      end
    end
  end
end

end; end
