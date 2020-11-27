view: product {
  sql_table_name: VIDEO5.PRODUCT ;;

  dimension: age_category {
    type: string
    sql: ${TABLE}.AGE_CATEGORY ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.BRAND ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.DEPARTMENT ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: full_description {
    type: string
    sql: ${TABLE}.FULL_DESCRIPTION ;;
  }

  dimension: product_category {
    type: string
    sql: ${TABLE}.PRODUCT_CATEGORY ;;
  }

  dimension: product_key {
    type: number
    sql: ${TABLE}.PRODUCT_KEY ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.PRODUCT_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
