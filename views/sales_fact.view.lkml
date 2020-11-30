view: sales_fact {
  sql_table_name: VIDEO5.SALES_FACT ;;

    dimension: product_key {
    type: number
    sql: ${TABLE}.PRODUCT_KEY ;;
  }
  dimension: store_key {
    type: number
    sql: ${TABLE}.STORE_KEY ;;
  }

  dimension: time_key {
    type: number
    sql: ${TABLE}.TIME_KEY ;;
  }

  measure: cost {
    type: sum
    sql: ${TABLE}.COST ;;
  }

  dimension: customer_count {
    type: number
    sql: ${TABLE}.CUSTOMER_COUNT ;;
  }

  measure: profit {
    type: sum
    sql: ${TABLE}.PROFIT ;;
  }

  measure: sales {
    type: sum
    sql: ${TABLE}.SALES ;;
  }

   measure: unit_sales {
    type: number
    sql: ${TABLE}.UNIT_SALES ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
