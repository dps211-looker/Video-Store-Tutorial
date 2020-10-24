#view: products {
  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
#}

# view: products {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
#########################################################
#********************************************************************
# Date: 10/22/2020
# The view defines various dimensions and measures for Video Stores
# Products will have Product Key, Product Type, Department, Product Category, Age Category
# Brand, Product Description and Prodcuts.Product_Key -> Sales Facts. Product_Key
#********************************************************************
view: products {
  sql_table_name: DEMOVID.products ;;

  dimension: product_key {
     primary_key: yes
     description: "Unique ID for each user that has ordered"
     type: number
     sql: ${TABLE}.product_key ;;
   }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: age_category {
    type: string
    sql: ${TABLE}.age_category ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: full_description {
    type: string
    sql: ${TABLE}.full_description ;;
  }

  dimension: product_category {
    type: string
    sql: ${TABLE}.product_category ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.product_type ;;
  }
  dimension: product_description {
    type: string
    sql: ${TABLE}.product_description ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  }
