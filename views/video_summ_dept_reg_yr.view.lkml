view: video_summ_dept_reg_yr {
  sql_table_name: VIDEO5.VIDEO_SUMM_DEPT_REG_YR ;;

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
    drill_fields: []
  }
}
