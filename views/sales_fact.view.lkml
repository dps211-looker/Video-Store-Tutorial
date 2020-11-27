view: sales_fact {
  sql_table_name: VIDEO5.SALES_FACT ;;

  dimension: cost {
    type: number
    sql: ${TABLE}.COST ;;
  }

  dimension: customer_count {
    type: number
    sql: ${TABLE}.CUSTOMER_COUNT ;;
  }

  dimension: product_key {
    type: number
    sql: ${TABLE}.PRODUCT_KEY ;;
  }

  dimension: profit {
    type: number
    sql: ${TABLE}.PROFIT ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.SALES ;;
  }

  dimension: store_key {
    type: number
    sql: ${TABLE}.STORE_KEY ;;
  }

  dimension: time_key {
    type: number
    sql: ${TABLE}.TIME_KEY ;;
  }

  dimension: unit_sales {
    type: number
    sql: ${TABLE}.UNIT_SALES ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
