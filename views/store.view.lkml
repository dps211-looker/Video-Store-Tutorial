view: store {
  sql_table_name: VIDEO5.STORE ;;

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: floor_plan_type {
    type: string
    sql: ${TABLE}.FLOOR_PLAN_TYPE ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.REGION ;;
  }

  dimension: reports {
    type: string
    sql: ${TABLE}.REPORTS ;;
  }

  dimension: store_key {
    type: number
    sql: ${TABLE}.STORE_KEY ;;
  }

  dimension: store_name {
    type: string
    sql: ${TABLE}.STORE_NAME ;;
  }

  dimension: store_size {
    type: string
    sql: ${TABLE}.STORE_SIZE ;;
  }

  measure: count {
    type: count
    drill_fields: [store_name]
  }
}
