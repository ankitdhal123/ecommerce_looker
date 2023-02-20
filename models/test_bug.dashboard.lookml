- dashboard: ankit_dashboard
  title: Ankit Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: GWrWRAegUl3xjIQ3AuppUj
  elements:
  - title: Ankit Test Explore
    name: Ankit Test Explore
    model: ab_project
    explore: orders
    type: looker_line
    fields: [users.city, users.age]
    sorts: [users.city]
    limit: 50
    total: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 2
    col: 0
    width: 8
    height: 6
  - title: 'Bar Graph '
    name: 'Bar Graph '
    model: ecommerce_ankitd
    explore: inventory_items
    type: looker_column
    fields: [products.brand, inventory_items.total_cost, products.count]
    filters:
      inventory_items.total_cost: ''
    sorts: [inventory_items.total_cost desc]
    limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Category: products.category
      Brand: products.brand
    row: 2
    col: 8
    width: 16
    height: 5
  - title: Demo
    name: Demo
    model: ecommerce_ankitd
    explore: inventory_items
    type: looker_grid
    fields: [products.brand, inventory_items.total_cost, products.count]
    filters:
      inventory_items.total_cost: ''
      products.category: ''
    sorts: [inventory_items.total_cost desc]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    series_types: {}
    listen:
      Brand: products.brand
    row: 8
    col: 0
    width: 8
    height: 6
  - name: Order Counts
    type: text
    title_text: Order Counts
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 6
    width: 8
    height: 2
  filters:
  - name: Category
    title: Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: ecommerce_ankitd
    explore: inventory_items
    listens_to_filters: []
    field: products.category
  - name: Brand
    title: Brand
    type: field_filter
    default_value: ANS
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: ecommerce_ankitd
    explore: inventory_items
    listens_to_filters: []
    field: products.brand
