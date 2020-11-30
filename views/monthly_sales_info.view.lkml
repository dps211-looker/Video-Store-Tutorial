include: "*.view.lkml"
view: monthly_sales_info {
  derived_table: {
    explore_source: sales_fact {
      column: TRANSACTION_DATE {
        field: sales_fact.time_key
      }
      #column: Sales {
        #field: sales_fact.sales
      #}
      column: Product_Key {
        field: sales_fact.product_key
      }
      column: Store_key {
        field: sales_fact.store_key
      }

    }
  }
  dimension: product_key {
    type: number
    sql: ${TABLE}.PRODUCT_KEY ;;
  }
  dimension: store_key {
    type: number
    sql: ${TABLE}.STORE_KEY ;;
  }
  dimension_group: Transaction {
    type: time
    timeframes: [
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.TRANSACTION_DATE ;;
    #sql: ${Transaction_Date_Month_date} ;;
    drill_fields: [Transaction_month, Transaction_quarter, Transaction_year]

  }

  #dimension: sales {
   # type: number
    #sql: ${TABLE}.Sales ;;
  #}
  #measure: Average_Monthly_Sales_Per_Store {
   # type: average
    #sql: ${TABLE}.Sales ;;
  #}
}
