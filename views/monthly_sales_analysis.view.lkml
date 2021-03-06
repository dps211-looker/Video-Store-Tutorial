include: "*.view.lkml"
#include: "product.view.lkml"
#test push1

view: monthly_sales_analysis {
  sql_table_name: VIDEO5.SALES_FACT ;;

  dimension_group: Transaction_Date_Month {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    #sql: ${Transaction_Date_Month_date} ;;



  }
  dimension_group: Transaction_Date_Quarter {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${Transaction_Date_Month_quarter} ;;
  }
  dimension_group: Transaction_Date_Year {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${Transaction_Date_Month_year} ;;
  }

  dimension: store_key_foreign {
    type: string
    sql: ${store.store_key}  ;;
  }
  dimension: time_key_foreign {
    type: string
    sql: ${times.time_key}  ;;
  }
  dimension: product_key_foreign {
    type: string
    sql: ${product.product_key}  ;;
  }
}


##view: monthly_sales_analysis {
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
##}

# view: monthly_sales_analysis {
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
