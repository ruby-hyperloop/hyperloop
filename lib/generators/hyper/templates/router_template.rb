module Components
  <%- @modules.each do |module_name| %><%= "  "* @indet %>module <%= module_name.camelize %><%- @indet += 1 %>
  <%- end %><%="  "* @indet %>class <%= @file_name %>

  <%="  "* @indet %>include React::Router

  <%="  "* @indet %>routes(path: "/") do  # change path to be the base path
  <%="  "* @indet %>  # you will probably want to update your config/routes.rb file so that it matches all
  <%="  "* @indet %>  # subroutes: i.e. get '(*subroutes)' => "<%= (@modules.last || 'home').underscore %>#<%= @file_name.underscore %>"
  <%="  "* @indet %>  # basic route has:
  <%="  "* @indet %>  #   a path
  <%="  "* @indet %>  #   a name - used to reference the route in methods like redirect, and link)
  <%="  "* @indet %>  #   a handler - the component that will be mounted on this route
  <%="  "* @indet %>  route(path: "subroute1-path", name: :subroute1, handler: Subroute1Component)
  <%="  "* @indet %>  route(path: "subroute2-path", name: :subroute2, handler: Subroute2Component)
  <%="  "* @indet %>  # routes can take parameters designated with a colon:
  <%="  "* @indet %>  route(path: "subroute3-path/:user_id", name: subroute3, handler: Subroute3Component)
  <%="  "* @indet %>  # the redirect method will transition any incoming matching routes to a new route
  <%="  "* @indet %>  redirect(from: "/", to: :subroute1)
  <%="  "* @indet %>  # the not_found method indicates which component to load if no route matches:
  <%="  "* @indet %>  not_found(handler: NotFound)
  <%="  "* @indet %>end

  <%="  "* @indet %>router_param :user_id, as: :user do |id|
  <%="  "* @indet %>  # Translate incoming route params to internal values.
  <%="  "* @indet %>  # In this case we will refer to the translated user_id as user.
  <%="  "* @indet %>  # The block param (id) will have the value of the param.
  <%="  "* @indet %>  # This is useful for looking up ActiveRecord models by ids, etc.
  <%="  "* @indet %>end

  <%="  "* @indet %>def show # note that the top level router has a show method NOT render
  <%="  "* @indet %>  DIV do
  <%="  "* @indet %>    #    content to display on every route
  <%="  "* @indet %>    # link generates an anchor tag.
  <%="  "* @indet %>    link(to: :subroute3, params: {user_id: 12}, class: "link-class") { "Click to go to subroute3" }
  <%="  "* @indet %>    # within an event handler use transition_to to move to a new route
  <%="  "* @indet %>    # the route_handler method will display the current route, it can be called in the
  <%="  "* @indet %>    # router, or in some child component.
  <%="  "* @indet %>    route_handler
  <%="  "* @indet %>  end
  <%="  "* @indet %>end
<%="  "* @indet %>end
  <%- @modules.each do %><%- @indet -= 1 %><%="  "* @indet %>end
  <%- end %>end
