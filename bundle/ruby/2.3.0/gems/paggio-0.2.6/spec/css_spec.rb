require 'paggio'

describe Paggio::CSS do
  it 'builds a rule' do
    css = Paggio.css do
      rule '#lol' do
        color 'black'
      end
    end

    expect(css.to_s).to eq("#lol {\n\tcolor: black;\n}\n")
  end

  it 'builds border-radius correctly' do
    css = Paggio.css do
      rule '#lol' do
        border radius: '5px'
      end
    end

    expect(css.to_s).to eq("#lol {\n\t-moz-border-radius: 5px;\n\t-webkit-border-radius: 5px;\n\tborder-radius: 5px;\n}\n")

    css = Paggio.css do
      rule '#lol' do
        border radius: { top: { left: '5px' } }
      end
    end

    expect(css.to_s).to eq("#lol {\n\t-moz-border-radius-topleft: 5px;\n\t-webkit-border-top-left-radius: 5px;\n\tborder-top-left-radius: 5px;\n}\n")
  end

  it 'builds box-shadow correctly' do
    css = Paggio.css do
      rule '#lol' do
        box shadow: '0 0 5px black'
      end
    end

    expect(css.to_s).to eq("#lol {\n\t-moz-box-shadow: 0 0 5px black;\n\t-webkit-box-shadow: 0 0 5px black;\n\tbox-shadow: 0 0 5px black;\n}\n")
  end

  it 'builds @font-face' do
    css = Paggio.css do
      font 'hue' do
        src url('test')
      end
    end

    expect(css.to_s).to eq("@font-face {\n\tfont-family: hue;\n\tsrc: url(\"test\");\n}\n")
  end

  it 'builds @keyframes' do

  end
end
