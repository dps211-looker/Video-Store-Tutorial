view: video_summ_all {
  sql_table_name: VIDEO5.VIDEO_SUMM_ALL ;;

  dimension_group: cal_date_mon {
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
    sql: ${TABLE}.CAL_DATE_MON ;;
  }

  dimension_group: cal_date_qtr {
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
    sql: ${TABLE}.CAL_DATE_QTR ;;
  }

  dimension_group: cal_date_yr {
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
    sql: ${TABLE}.CAL_DATE_YR ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: cost_count {
    type: number
    sql: ${TABLE}.COST_COUNT ;;
  }

  dimension: cost_sum {
    type: number
    sql: ${TABLE}.COST_SUM ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.DEPARTMENT ;;
  }

  dimension: profit_count {
    type: number
    sql: ${TABLE}.PROFIT_COUNT ;;
  }

  dimension: profit_sum {
    type: number
    sql: ${TABLE}.PROFIT_SUM ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.REGION ;;
  }

  dimension: sales_count {
    type: number
    sql: ${TABLE}.SALES_COUNT ;;
  }

  dimension: sales_sum {
    type: number
    sql: ${TABLE}.SALES_SUM ;;
  }

  dimension: store_name {
    type: string
    sql: ${TABLE}.STORE_NAME ;;
  }

  dimension: unit_sales_count {
    type: number
    sql: ${TABLE}.UNIT_SALES_COUNT ;;
  }

  dimension: unit_sales_sum {
    type: number
    sql: ${TABLE}.UNIT_SALES_SUM ;;
  }

  measure: count {
    type: count
    drill_fields: [store_name]
  }
}
