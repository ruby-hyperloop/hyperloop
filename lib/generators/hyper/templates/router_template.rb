module Components
  <%- @modules.each do |module_name| %><%= "  "* @indent %>module <%= module_name.camelize %><%- @indent += 1 %>
  <%- end %><%="  "* @indent %>class <%= @file_name %>

  <%="  "* @indent %>include React::Router

  <%="  "* @indent %>routes(path: "/") do  # change path to be the base path
  <%="  "* @indent %>  # you will probably want to update your config/routes.rb file so that it matches all
  <%="  "* @indent %>  # subroutes: i.e. get '(*subroutes)' => "<%= (@modules.last || 'home').underscore %>#<%= @file_name.underscore %>"
  <%="  "* @indent %>  # basic route has:
  <%="  "* @indent %>  #   a path
  <%="  "* @indent %>  #   a name - used to reference the route in methods like redirect, and link)
  <%="  "* @indent %>  #   a handler - the component that will be mounted on this route
  <%="  "* @indent %>  route(path: "subroute1-path", name: :subroute1, handler: Subroute1Component)
  <%="  "* @indent %>  route(path: "subroute2-path", name: :subroute2, handler: Subroute2Component)
  <%="  "* @indent %>  # routes can take parameters designated with a colon:
  <%="  "* @indent %>  route(path: "subroute3-path/:user_id", name: subroute3, handler: Subroute3Component)
  <%="  "* @indent %>  # the redirect method will transition any incoming matching routes to a new route
  <%="  "* @indent %>  redirect(from: "/", to: :subroute1)
  <%="  "* @indent %>  # the not_found method indicates which component to load if no route matches:
  <%="  "* @indent %>  not_found(handler: NotFound)
  <%="  "* @indent %>end

  <%="  "* @indent %>router_param :user_id, as: :user do |id|
  <%="  "* @indent %>  # Translate incoming route params to internal values.
  <%="  "* @indent %>  # In this case we will refer to the translated user_id as user.
  <%="  "* @indent %>  # The block param (id) will have the value of the param.
  <%="  "* @indent %>  # This is useful for looking up ActiveRecord models by ids, etc.
  <%="  "* @indent %>end

  <%="  "* @indent %>def show # note that the top level router has a show method NOT render
  <%="  "* @indent %>  DIV do
  <%="  "* @indent %>    #    content to display on every route
  <%="  "* @indent %>    # link generates an anchor tag.
  <%="  "* @indent %>    link(to: :subroute3, params: {user_id: 12}, class: "link-class") { "Click to go to subroute3" }
  <%="  "* @indent %>    # within an event handler use transition_to to move to a new route
  <%="  "* @indent %>    # the route_handler method will display the current route, it can be called in the
  <%="  "* @indent %>    # router, or in some child component.
  <%="  "* @indent %>    route_handler
  <%="  "* @indent %>  end
  <%="  "* @indent %>end
<%="  "* @indent %>end
  <%- @modules.each do %><%- @indent -= 1 %><%="  "* @indent %>end
  <%- end %>end
