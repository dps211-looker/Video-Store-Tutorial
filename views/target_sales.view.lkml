view: target_sales {
  sql_table_name: VIDEO5.TARGET_SALES ;;

  dimension: time_key {
    type: number
    sql: ${TABLE}.TIME_KEY ;;
  }

  measure: target_sales {
    type: sum
    sql: ${TABLE}.TARGET_SALES ;;
  }
  measure: count {
    type: count
    drill_fields: []
  }
}
