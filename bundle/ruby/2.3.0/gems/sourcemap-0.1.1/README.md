# Ruby Source Maps

A Ruby library to read, create and manipulate Source Maps.

[Source Maps](http://www.html5rocks.com/en/tutorials/developertools/sourcemaps/) allow easy debugging and development of CoffeeScript and minifed JavaScript.

# Installation

    gem install sourcemap
    # or Bundler:
    gem 'sourcemap'

# Usage

## Concatenation

Join multiple source maps together.

``` ruby
foo = File.read("examples/foo.js")
bar = File.read("examples/bar.js")
foobar = foo + bar

foo_map = SourceMap::Map.from_json File.read("examples/foo.map")
bar_map = SourceMap::Map.from_json File.read("examples/bar.map")
foobar_map = foo_map + bar_map
foobar_map.to_json
```

## Piping

Base one source map of another.

``` ruby
cs_map = SourceMap::Map.from_json File.read("examples/index.map")
min_map = SourceMap::Map.from_json File.read("examples/index.min.map")
combined_map = cs_map | min_map
combined_map.to_json
```

## Map

### Map.from_json(json)

Create a new `Map` instance from a JSON map string.

    SourceMap::Map.from_json(%{
      {
        "version": 3,
        "file": "index.js",
        "sourceRoot": "",
        "sources": [
          "index.coffee"
        ],
        "names": [],
        "mappings": ";AAAA;AAAA,MAAA,IAAA;;AAAA"
      }
    })

### Map.from_hash(hash)

Create a new `Map` instance from a hash.

    hash = {
      'version'   => 3,
      'file'      => "script.min.js",
      'mappings'  => "AAEAA,QAASA,MAAK,EAAG,CACfC,OAAAC,IAAA,CAAY,eAAZ,CADe",
      'sources'   => ["script.js"],
      'names'     => ["hello", "console", "log"]
    }
    map = SourceMap::Map.from_hash(hash)

### Map.new(mappings = [], filename = nil)

Instantiate a `Map` instance, passing in an optional array of `Mapping`s and file name.

    @mappings = SourceMap::Map.new([
      SourceMap::Mapping.new('a.js', SourceMap::Offset.new(0, 0), SourceMap::Offset.new(0, 0)),
      SourceMap::Mapping.new('b.js', SourceMap::Offset.new(1, 0), SourceMap::Offset.new(20, 0)),
      SourceMap::Mapping.new('c.js', SourceMap::Offset.new(2, 0), SourceMap::Offset.new(30, 0))
    ])

### Map#size

Returns the amount of mappings

### Map#[]

Lookup a mapping by integer

    map = SourceMap::Map.from_json(json)
    map[5] #=> <Mapping>

### Map#each

Iterate over each mapping.

### Map#to_s

Returns a VLQ representation of the source map.

    mapping = SourceMap::Map.from_hash(hash)
    mappings.to_s #=> "ACmBA;ACUA"

### Map#sources

Returns an array of the original file names referenced in each mapping.

### Map#names

Returns an array of 'names', which are referenced in the mappings (in case the original source file is not available).

### Map#+

Concatenates Maps together, so you can serve mappings from multiple sources as one combined map.

    foo_map = SourceMap::Map.from_json File.read("examples/foo.map")
    bar_map = SourceMap::Map.from_json File.read("examples/bar.map")
    foobar_map = foo_map + bar_map
    foobar_map.to_json

### Map#|

Pipes map files together, so for example you could pipe a CoffeeScript map of `index.coffee` and an uglifier map of `index.js` together. In other words, one mapping will be based of the other.

    coffeescript_map = SourceMap::Map.from_json(cs_map_json)
    uglifier_map = SourceMap::Map.from_json(min_map_json)

    combined_map = coffeescript_map | uglifier_map

### Map#bsearch(offset)

Find the closest generated mapping to any given offset using a binary tree search.

    foo_map = SourceMap::Map.from_json File.read("examples/foo.map")
    foo_map.bsearch(SourceMap::Offset.new(1,1)) #=> <Mapping>

The method will return `nil` if an offset can't be found.

### Map#as_json

Convert a `Map` instance back to JSON.

    map = Map.new([
      Mapping.new('a.js', Offset.new(0, 0), Offset.new(0, 0)),
      Mapping.new('b.js', Offset.new(1, 0), Offset.new(20, 0)),
      Mapping.new('c.js', Offset.new(2, 0), Offset.new(30, 0))
    ])

    map.to_json #=> "{...}"

## Offset

### Offset.new(line, column)

Instantiate an `Offset`, passing in a line and column integer.

### Offset#+

Add two offsets together.

### Offset#<=>

Compare the position of two offsets, first the line than the column.

## Offset#to_s

Get a pretty representation of an offset.
