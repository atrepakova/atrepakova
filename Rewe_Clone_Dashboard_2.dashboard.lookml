- dashboard: cdp__customer_segment_campaign_performance
  title: CDP // Customer Segment Campaign Performance
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: Open %
    name: Open %
    model: omni_channel
    explore: omni_channel_transactions
    type: single_value
    fields: [c360.customer_count, customers.gender]
    sorts: [calculation_1 desc]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${c360.customer_count}/${c360.customer_count:total}",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [c360.customer_count]
    listen:
      Customer Group Name: omni_channel_transactions__transaction_details.customer_group_name
      Customer Segment: omni_channel_transactions.offer_type
      Has Email Address?: omni_channel_transactions.last_360
      Customer Type: c360.customer_type
      Likely to Interact With: c360.acquisition_source
      Recipe Recommendation: omni_channel_transactions__transaction_details.product_area
      Campaign Name: omni_channel_transactions__transaction_details.campaign_name
      Price Sensitivity: c360.risk_of_churn_100
    row: 15
    col: 6
    width: 6
    height: 3
  - name: Email Campaign KPIs
    type: text
    title_text: Email Campaign KPIs
    subtitle_text: ''
    body_text: ''
    row: 10
    col: 0
    width: 24
    height: 2
  - name: Sales Performance
    type: text
    title_text: Sales Performance
    subtitle_text: ''
    body_text: ''
    row: 26
    col: 0
    width: 24
    height: 2
  - title: Email Click-Throughs
    name: Email Click-Throughs
    model: omni_channel
    explore: omni_channel_transactions
    type: single_value
    fields: [c360.customer_count]
    filters:
      customers.gender: Female
      customers.traffic_source: Search
    sorts: [c360.customer_count desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: goal, label: Goal, expression: '1000', value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: dimension, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Customer Group Name: omni_channel_transactions__transaction_details.customer_group_name
      Customer Segment: omni_channel_transactions.offer_type
      Has Email Address?: omni_channel_transactions.last_360
      Customer Type: c360.customer_type
      Likely to Interact With: c360.acquisition_source
      Recipe Recommendation: omni_channel_transactions__transaction_details.product_area
      Campaign Name: omni_channel_transactions__transaction_details.campaign_name
      Price Sensitivity: c360.risk_of_churn_100
    row: 15
    col: 12
    width: 6
    height: 3
  - title: Click-Through %
    name: Click-Through %
    model: omni_channel
    explore: omni_channel_transactions
    type: single_value
    fields: [customers.gender, customers.traffic_source, omni_channel_transactions.customer_count]
    sorts: [customers.gender, customers.traffic_source desc]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields: [{table_calculation: calculation_2, label: Calculation 2, expression: "${omni_channel_transactions.customer_count}\
          \ / ${omni_channel_transactions.customer_count:total}", value_format: !!null '',
        value_format_name: percent_1, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Click-Through %
    defaults_version: 1
    hidden_fields: [omni_channel_transactions.customer_count, customers.traffic_source]
    series_types: {}
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
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    listen:
      Customer Group Name: omni_channel_transactions__transaction_details.customer_group_name
      Customer Segment: omni_channel_transactions.offer_type
      Has Email Address?: omni_channel_transactions.last_360
      Customer Type: c360.customer_type
      Likely to Interact With: c360.acquisition_source
      Recipe Recommendation: omni_channel_transactions__transaction_details.product_area
      Campaign Name: omni_channel_transactions__transaction_details.campaign_name
      Price Sensitivity: c360.risk_of_churn_100
    row: 15
    col: 18
    width: 6
    height: 3
  - title: Email Sent
    name: Email Sent
    model: omni_channel
    explore: omni_channel_transactions
    type: single_value
    fields: [c360.customer_count]
    filters: {}
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Customer Group Name: omni_channel_transactions__transaction_details.customer_group_name
      Customer Segment: omni_channel_transactions.offer_type
      Has Email Address?: omni_channel_transactions.last_360
      Customer Type: c360.customer_type
      Likely to Interact With: c360.acquisition_source
      Recipe Recommendation: omni_channel_transactions__transaction_details.product_area
      Campaign Name: omni_channel_transactions__transaction_details.campaign_name
      Price Sensitivity: c360.risk_of_churn_100
    row: 12
    col: 0
    width: 24
    height: 3
  - title: Emails Opened
    name: Emails Opened
    model: omni_channel
    explore: omni_channel_transactions
    type: single_value
    fields: [c360.customer_count]
    filters:
      customers.gender: Female
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Customer Group Name: omni_channel_transactions__transaction_details.customer_group_name
      Customer Segment: omni_channel_transactions.offer_type
      Has Email Address?: omni_channel_transactions.last_360
      Customer Type: c360.customer_type
      Likely to Interact With: c360.acquisition_source
      Recipe Recommendation: omni_channel_transactions__transaction_details.product_area
      Campaign Name: omni_channel_transactions__transaction_details.campaign_name
      Price Sensitivity: c360.risk_of_churn_100
    row: 15
    col: 0
    width: 6
    height: 3
  - title: Transaction Count
    name: Transaction Count
    model: omni_channel
    explore: omni_channel_transactions
    type: single_value
    fields: [omni_channel_transactions.transaction_count]
    filters:
      omni_channel_transactions.transaction_date: 2020/12/01 to 2021/01/31
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Customer Group Name: omni_channel_transactions__transaction_details.customer_group_name
      Customer Segment: omni_channel_transactions.offer_type
      Has Email Address?: omni_channel_transactions.last_360
      Customer Type: c360.customer_type
      Likely to Interact With: c360.acquisition_source
      Recipe Recommendation: omni_channel_transactions__transaction_details.product_area
      Campaign Name: omni_channel_transactions__transaction_details.campaign_name
      Price Sensitivity: c360.risk_of_churn_100
    row: 28
    col: 0
    width: 12
    height: 3
  - title: Total Sales
    name: Total Sales
    model: omni_channel
    explore: omni_channel_transactions
    type: single_value
    fields: [omni_channel_transactions__transaction_details.total_sales]
    filters:
      omni_channel_transactions.transaction_date: 2020/12/01 to 2021/01/31
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Customer Group Name: omni_channel_transactions__transaction_details.customer_group_name
      Customer Segment: omni_channel_transactions.offer_type
      Has Email Address?: omni_channel_transactions.last_360
      Customer Type: c360.customer_type
      Likely to Interact With: c360.acquisition_source
      Recipe Recommendation: omni_channel_transactions__transaction_details.product_area
      Campaign Name: omni_channel_transactions__transaction_details.campaign_name
      Price Sensitivity: c360.risk_of_churn_100
    row: 28
    col: 12
    width: 12
    height: 3
  - title: Total Sales by Channel
    name: Total Sales by Channel
    model: omni_channel
    explore: omni_channel_transactions
    type: looker_bar
    fields: [omni_channel_transactions.fulfillment_channel, omni_channel_transactions__transaction_details.total_sales]
    pivots: [omni_channel_transactions.fulfillment_channel]
    filters:
      omni_channel_transactions.transaction_date: 2021/01/01 to 2021/01/31
    sorts: [omni_channel_transactions.fulfillment_channel]
    limit: 500
    column_limit: 50
    row_total: right
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: Assisted Checkout -
              omni_channel_transactions.transaction_count, id: Assisted Checkout -
              omni_channel_transactions.transaction_count, name: Assisted Checkout},
          {axisId: Delivery - omni_channel_transactions.transaction_count, id: Delivery
              - omni_channel_transactions.transaction_count, name: Delivery}, {axisId: In-store
              Pickup - omni_channel_transactions.transaction_count, id: In-store Pickup
              - omni_channel_transactions.transaction_count, name: In-store Pickup},
          {axisId: Self Checkout - omni_channel_transactions.transaction_count, id: Self
              Checkout - omni_channel_transactions.transaction_count, name: Self Checkout}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    show_null_points: false
    interpolation: monotone
    defaults_version: 1
    listen:
      Customer Group Name: omni_channel_transactions__transaction_details.customer_group_name
      Customer Segment: omni_channel_transactions.offer_type
      Has Email Address?: omni_channel_transactions.last_360
      Customer Type: c360.customer_type
      Likely to Interact With: c360.acquisition_source
      Recipe Recommendation: omni_channel_transactions__transaction_details.product_area
      Campaign Name: omni_channel_transactions__transaction_details.campaign_name
      Price Sensitivity: c360.risk_of_churn_100
    row: 31
    col: 12
    width: 12
    height: 9
  - title: Total Transaction Count by Channel
    name: Total Transaction Count by Channel
    model: omni_channel
    explore: omni_channel_transactions
    type: looker_line
    fields: [omni_channel_transactions.fulfillment_channel, omni_channel_transactions.transaction_count,
      omni_channel_transactions.transaction_week]
    pivots: [omni_channel_transactions.fulfillment_channel]
    fill_fields: [omni_channel_transactions.transaction_week]
    filters:
      omni_channel_transactions.transaction_date: 2020/12/01 to 2021/01/31
    sorts: [omni_channel_transactions.fulfillment_channel, omni_channel_transactions.transaction_week
        desc]
    limit: 500
    column_limit: 50
    row_total: right
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: Assisted Checkout -
              omni_channel_transactions.transaction_count, id: Assisted Checkout -
              omni_channel_transactions.transaction_count, name: Assisted Checkout},
          {axisId: Delivery - omni_channel_transactions.transaction_count, id: Delivery
              - omni_channel_transactions.transaction_count, name: Delivery}, {axisId: In-store
              Pickup - omni_channel_transactions.transaction_count, id: In-store Pickup
              - omni_channel_transactions.transaction_count, name: In-store Pickup},
          {axisId: Self Checkout - omni_channel_transactions.transaction_count, id: Self
              Checkout - omni_channel_transactions.transaction_count, name: Self Checkout}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors: {}
    defaults_version: 1
    ordering: none
    show_null_labels: false
    listen:
      Customer Group Name: omni_channel_transactions__transaction_details.customer_group_name
      Customer Segment: omni_channel_transactions.offer_type
      Has Email Address?: omni_channel_transactions.last_360
      Customer Type: c360.customer_type
      Likely to Interact With: c360.acquisition_source
      Recipe Recommendation: omni_channel_transactions__transaction_details.product_area
      Campaign Name: omni_channel_transactions__transaction_details.campaign_name
      Price Sensitivity: c360.risk_of_churn_100
    row: 31
    col: 0
    width: 12
    height: 9
  - title: ''
    name: ''
    model: omni_channel
    explore: omni_channel_transactions
    type: single_value
    fields: [omni_channel_transactions.offer_type]
    sorts: [omni_channel_transactions.offer_type]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Customer Group Name: omni_channel_transactions__transaction_details.customer_group_name
      Customer Segment: omni_channel_transactions.offer_type
      Has Email Address?: omni_channel_transactions.last_360
      Customer Type: c360.customer_type
      Likely to Interact With: c360.acquisition_source
      Recipe Recommendation: omni_channel_transactions__transaction_details.product_area
      Campaign Name: omni_channel_transactions__transaction_details.campaign_name
      Price Sensitivity: c360.risk_of_churn_100
    row: 2
    col: 0
    width: 9
    height: 2
  - name: Customer Segment Overview
    type: text
    title_text: Customer Segment Overview
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Sales by Channel
    name: Sales by Channel
    model: omni_channel
    explore: omni_channel_transactions
    type: looker_pie
    fields: [omni_channel_transactions__transaction_details.total_sales, c360.customer_type]
    fill_fields: [c360.customer_type]
    sorts: [omni_channel_transactions__transaction_details.total_sales desc]
    limit: 500
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    series_types: {}
    defaults_version: 1
    listen:
      Customer Group Name: omni_channel_transactions__transaction_details.customer_group_name
      Customer Segment: omni_channel_transactions.offer_type
      Has Email Address?: omni_channel_transactions.last_360
      Customer Type: c360.customer_type
      Likely to Interact With: c360.acquisition_source
      Recipe Recommendation: omni_channel_transactions__transaction_details.product_area
      Campaign Name: omni_channel_transactions__transaction_details.campaign_name
      Price Sensitivity: c360.risk_of_churn_100
    row: 2
    col: 9
    width: 9
    height: 8
  - title: Recipe Preferences
    name: Recipe Preferences
    model: omni_channel
    explore: omni_channel_transactions
    type: looker_column
    fields: [omni_channel_transactions.customer_count, omni_channel_transactions__transaction_details.product_area]
    pivots: [omni_channel_transactions__transaction_details.product_area]
    filters: {}
    sorts: [omni_channel_transactions.customer_count desc 0, omni_channel_transactions__transaction_details.product_area]
    limit: 500
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
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    series_types: {}
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    listen:
      Customer Group Name: omni_channel_transactions__transaction_details.customer_group_name
      Customer Segment: omni_channel_transactions.offer_type
      Has Email Address?: omni_channel_transactions.last_360
      Customer Type: c360.customer_type
      Likely to Interact With: c360.acquisition_source
      Recipe Recommendation: omni_channel_transactions__transaction_details.product_area
      Campaign Name: omni_channel_transactions__transaction_details.campaign_name
      Price Sensitivity: c360.risk_of_churn_100
    row: 2
    col: 18
    width: 6
    height: 8
  - title: Customer Count
    name: Customer Count
    model: omni_channel
    explore: omni_channel_transactions
    type: single_value
    fields: [omni_channel_transactions.customer_count]
    sorts: [omni_channel_transactions.customer_count]
    limit: 500
    dynamic_fields: [{table_calculation: total_customers, label: Total Customers,
        expression: '83441', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Customer Group Name: omni_channel_transactions__transaction_details.customer_group_name
      Customer Segment: omni_channel_transactions.offer_type
      Has Email Address?: omni_channel_transactions.last_360
      Customer Type: c360.customer_type
      Likely to Interact With: c360.acquisition_source
      Recipe Recommendation: omni_channel_transactions__transaction_details.product_area
    row: 4
    col: 0
    width: 9
    height: 3
  - title: Customer Sales
    name: Customer Sales
    model: omni_channel
    explore: omni_channel_transactions
    type: single_value
    fields: [omni_channel_transactions__transaction_details.total_sales]
    limit: 500
    dynamic_fields: [{table_calculation: total_sales, label: Total Sales, expression: '22315899',
        value_format: !!null '', value_format_name: usd_0, _kind_hint: dimension,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Customer Group Name: omni_channel_transactions__transaction_details.customer_group_name
      Customer Segment: omni_channel_transactions.offer_type
      Has Email Address?: omni_channel_transactions.last_360
      Customer Type: c360.customer_type
      Likely to Interact With: c360.acquisition_source
      Recipe Recommendation: omni_channel_transactions__transaction_details.product_area
      Campaign Name: omni_channel_transactions__transaction_details.campaign_name
      Price Sensitivity: c360.risk_of_churn_100
    row: 7
    col: 0
    width: 9
    height: 3
  - name: Digital Advertising Campaign KPIs
    type: text
    title_text: Digital Advertising Campaign KPIs
    subtitle_text: ''
    body_text: ''
    row: 18
    col: 0
    width: 24
    height: 2
  - title: Adverts Surfaced
    name: Adverts Surfaced
    model: omni_channel
    explore: omni_channel_transactions
    type: single_value
    fields: [c360.customer_count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Customer Group Name: omni_channel_transactions__transaction_details.customer_group_name
      Customer Segment: omni_channel_transactions.offer_type
      Has Email Address?: omni_channel_transactions.last_360
      Customer Type: c360.customer_type
      Likely to Interact With: c360.acquisition_source
      Recipe Recommendation: omni_channel_transactions__transaction_details.product_area
      Campaign Name: omni_channel_transactions__transaction_details.campaign_name
      Price Sensitivity: c360.risk_of_churn_100
    row: 20
    col: 0
    width: 24
    height: 3
  - title: Adverts Viewed
    name: Adverts Viewed
    model: omni_channel
    explore: omni_channel_transactions
    type: single_value
    fields: [c360.customer_count]
    filters:
      customers.gender: Male
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Customer Group Name: omni_channel_transactions__transaction_details.customer_group_name
      Customer Segment: omni_channel_transactions.offer_type
      Has Email Address?: omni_channel_transactions.last_360
      Customer Type: c360.customer_type
      Likely to Interact With: c360.acquisition_source
      Recipe Recommendation: omni_channel_transactions__transaction_details.product_area
      Campaign Name: omni_channel_transactions__transaction_details.campaign_name
      Price Sensitivity: c360.risk_of_churn_100
    row: 23
    col: 0
    width: 6
    height: 3
  - title: View %
    name: View %
    model: omni_channel
    explore: omni_channel_transactions
    type: single_value
    fields: [c360.customer_count, customers.gender]
    sorts: [customers.gender desc]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${c360.customer_count}/${c360.customer_count:total}",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [c360.customer_count]
    listen:
      Customer Group Name: omni_channel_transactions__transaction_details.customer_group_name
      Customer Segment: omni_channel_transactions.offer_type
      Has Email Address?: omni_channel_transactions.last_360
      Customer Type: c360.customer_type
      Likely to Interact With: c360.acquisition_source
      Recipe Recommendation: omni_channel_transactions__transaction_details.product_area
      Campaign Name: omni_channel_transactions__transaction_details.campaign_name
      Price Sensitivity: c360.risk_of_churn_100
    row: 23
    col: 6
    width: 6
    height: 3
  - title: Ad Click-Throughs
    name: Ad Click-Throughs
    model: omni_channel
    explore: omni_channel_transactions
    type: single_value
    fields: [c360.customer_count]
    filters:
      customers.gender: Male
      customers.traffic_source: Search
    sorts: [c360.customer_count desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: goal, label: Goal, expression: '1000', value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: dimension, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Customer Group Name: omni_channel_transactions__transaction_details.customer_group_name
      Customer Segment: omni_channel_transactions.offer_type
      Has Email Address?: omni_channel_transactions.last_360
      Customer Type: c360.customer_type
      Likely to Interact With: c360.acquisition_source
      Recipe Recommendation: omni_channel_transactions__transaction_details.product_area
      Campaign Name: omni_channel_transactions__transaction_details.campaign_name
      Price Sensitivity: c360.risk_of_churn_100
    row: 23
    col: 12
    width: 6
    height: 3
  - title: Click-Through
    name: Click-Through
    model: omni_channel
    explore: omni_channel_transactions
    type: single_value
    fields: [customers.gender, customers.traffic_source, omni_channel_transactions.customer_count]
    sorts: [customers.gender desc, customers.traffic_source desc]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields: [{table_calculation: from_last_year, label: from last year, expression: "${omni_channel_transactions.transaction_count}/offset(${omni_channel_transactions.transaction_count},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_1, is_disabled: true,
        _kind_hint: dimension, _type_hint: number}, {table_calculation: calculation_2,
        label: Calculation 2, expression: "${omni_channel_transactions.customer_count}\
          \ / ${omni_channel_transactions.customer_count:total}", value_format: !!null '',
        value_format_name: percent_1, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Click-Through %
    defaults_version: 1
    hidden_fields: [omni_channel_transactions.customer_count, customers.gender, customers.traffic_source]
    listen:
      Customer Group Name: omni_channel_transactions__transaction_details.customer_group_name
      Customer Segment: omni_channel_transactions.offer_type
      Has Email Address?: omni_channel_transactions.last_360
      Customer Type: c360.customer_type
      Likely to Interact With: c360.acquisition_source
      Recipe Recommendation: omni_channel_transactions__transaction_details.product_area
      Campaign Name: omni_channel_transactions__transaction_details.campaign_name
      Price Sensitivity: c360.risk_of_churn_100
    row: 23
    col: 18
    width: 6
    height: 3
  - title: Price Sensitive Customers
    name: Price Sensitive Customers
    model: omni_channel
    explore: omni_channel_transactions
    type: looker_grid
    fields: [c360.customer_id, customers.name, c360.days_since_last_purchase, c360.risk_of_churn,
      c360.transaction_count]
    filters:
      omni_channel_transactions__transaction_details.customer_group_name: ''
      c360.cart_adds: ''
    sorts: [c360.days_since_last_purchase]
    limit: 100
    column_limit: 50
    dynamic_fields: [{table_calculation: price_sensitivity, label: Price Sensitivity,
        expression: "${c360.risk_of_churn}", value_format: !!null '', value_format_name: percent_1,
        _kind_hint: dimension, _type_hint: number}, {measure: recommended_products,
        based_on: omni_channel_transactions__transaction_details.product_name, type: list,
        label: Recommended Products, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: list}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '15'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_column_widths:
      c360.customer_id: 130
      customers.name: 289
      c360.risk_of_churn: 218
      c360.predicted_clv: 544
      c360.days_since_last_purchase: 273
    series_cell_visualizations:
      recommended_products:
        is_active: true
      c360.predicted_clv:
        is_active: true
        value_display: true
      price_sensitivity:
        is_active: false
        palette:
          palette_id: 1ebd8493-ebcc-4e57-a4ff-ab3e6111da24
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      c360.transaction_count:
        is_active: true
    series_text_format:
      c360.risk_of_churn:
        align: left
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0,
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: false, reverse: true, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [c360.risk_of_churn]}]
    defaults_version: 1
    hidden_fields: [c360.risk_of_churn]
    listen:
      Customer Segment: omni_channel_transactions.offer_type
      Has Email Address?: omni_channel_transactions.last_360
      Customer Type: c360.customer_type
      Likely to Interact With: c360.acquisition_source
      Recipe Recommendation: omni_channel_transactions__transaction_details.product_area
      Campaign Name: omni_channel_transactions__transaction_details.campaign_name
      Price Sensitivity: c360.risk_of_churn_100
    row: 40
    col: 0
    width: 24
    height: 14
  filters:
  - name: Customer Type
    title: Customer Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: omni_channel
    explore: omni_channel_transactions
    listens_to_filters: []
    field: c360.customer_type
  - name: Has Email Address?
    title: Has Email Address?
    type: field_filter
    default_value: Yes,No
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
      options: []
    model: omni_channel
    explore: omni_channel_transactions
    listens_to_filters: []
    field: omni_channel_transactions.last_360
  - name: Customer Segment
    title: Customer Segment
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: omni_channel
    explore: omni_channel_transactions
    listens_to_filters: []
    field: omni_channel_transactions.offer_type
  - name: Likely to Interact With
    title: Likely to Interact With
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: omni_channel
    explore: omni_channel_transactions
    listens_to_filters: []
    field: c360.acquisition_source
  - name: Recipe Recommendation
    title: Recipe Recommendation
    type: string_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options:
      - Traditional Dinner
      - Healthy Lunch
      - Modern Vegan Classic
      - Experimental Chef
      - Other
  - name: Price Sensitivity
    title: Price Sensitivity
    type: field_filter
    default_value: "[50,100]"
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
      options: []
    model: omni_channel
    explore: omni_channel_transactions
    listens_to_filters: []
    field: c360.risk_of_churn_100
  - name: Customer Group Name
    title: Customer Group Name
    type: string_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
  - name: Campaign Name
    title: Campaign Name
    type: field_filter
    default_value: "< 500"
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: omni_channel
    explore: omni_channel_transactions
    listens_to_filters: []
    field: omni_channel_transactions__transaction_details.campaign_name
  - name: Transaction Date
    title: Transaction Date
    type: field_filter
    default_value: 2020/11/01 to 2021/02/16
    allow_multiple_values: true
    required: false
    ui_config:
      type: day_range_picker
      display: inline
      options: []
    model: omni_channel
    explore: omni_channel_transactions
    listens_to_filters: []
    field: omni_channel_transactions.transaction_date
