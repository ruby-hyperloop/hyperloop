module Components
  <%- @modules.each do |module_name| %><%= "  "* @indet %>module <%= module_name.camelize %><%- @indet += 1 %>
  <%- end %><%="  "* @indet %>class <%= @file_name %> < Hyperloop::Component

  <%="  "* @indet %># param :my_param
  <%="  "* @indet %># param param_with_default: "default value"
  <%="  "* @indet %># param :param_with_default2, default: "default value" # alternative syntax
  <%="  "* @indet %># param :param_with_type, type: Hash
  <%="  "* @indet %># param :array_of_hashes, type: [Hash]
  <%="  "* @indet %># collect_other_params_as :attributes  # collects all other params into a hash

  <%="  "* @indet %># The following are the most common lifecycle call backs,
  <%="  "* @indet %># the following are the most common lifecycle call backs# delete any that you are not using.
  <%="  "* @indet %># call backs may also reference an instance method i.e. before_mount :my_method

  <%="  "* @indet %>before_mount do
  <%="  "* @indet %>  # any initialization particularly of state variables goes here.
  <%="  "* @indet %>  # this will execute on server (prerendering) and client.
  <%="  "* @indet %>end

  <%="  "* @indet %>after_mount do
  <%="  "* @indet %>  # any client only post rendering initialization goes here.
  <%="  "* @indet %>  # i.e. start timers, HTTP requests, and low level jquery operations etc.
  <%="  "* @indet %>end

  <%="  "* @indet %>before_update do
  <%="  "* @indet %>  # called whenever a component will be re-rerendered
  <%="  "* @indet %>end

  <%="  "* @indet %>before_unmount do
  <%="  "* @indet %>  # cleanup any thing (i.e. timers) before component is destroyed
  <%="  "* @indet %>end

  <%="  "* @indet %>def render
  <%="  "* @indet %>  div do
  <%="  "* @indet %>    "<%= (@modules+[@file_name]).join('::') %>"
  <%="  "* @indet %>  end
  <%="  "* @indet %>end
<%="  "* @indet %>end
  <%- @modules.each do %><%- @indet -= 1 %><%="  "* @indet %>end
  <%- end %>end
