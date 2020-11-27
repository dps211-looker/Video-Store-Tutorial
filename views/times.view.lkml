view: times {
  sql_table_name: VIDEO5.TIMES ;;

  dimension: day_of_week {
    type: string
    sql: ${TABLE}.DAY_OF_WEEK ;;
  }

  dimension: holiday_flag {
    type: string
    sql: ${TABLE}.HOLIDAY_FLAG ;;
  }

  dimension: time_key {
    type: number
    sql: ${TABLE}.TIME_KEY ;;
  }

  dimension_group: transaction {
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
    sql: ${TABLE}.TRANSACTION_DATE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
