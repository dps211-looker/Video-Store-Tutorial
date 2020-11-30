view: monthly_sales_tables_dt {
  derived_table: {
    #sql: select city from VIDEO5.store ;;
    sql:select TIMES.TRANSACTION_DATE as Transaction_date,
          STORE.CITY as CITY,
          PRODUCT.DEPARTMENT AS DEPARTMENT,
          STORE.REGION AS REGION,
          SALES_FACT.SALES AS SALES,
          STORE.STORE_NAME AS STORE_NAME
          from VIDEO5.TIMES, VIDEO5.STORE, VIDEO5.PRODUCT, VIDEO5.SALES_FACT
          WHERE (TIMES.TIME_KEY = SALES_FACT.TIME_KEY) AND
          (PRODUCT.PRODUCT_KEY = SALES_FACT.PRODUCT_KEY) AND
          (STORE.STORE_KEY = SALES_FACT.STORE_KEY)
          ;;
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
    sql: ${TABLE}.Transaction_date ;;
    #sql: ${Transaction_Date_Month_date} ;;
    drill_fields: [Transaction_month, Transaction_quarter, Transaction_year]

  }

  dimension: CITY {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: DEPARTMENT {
    type: string
    sql: ${TABLE}.DEPARTMENT ;;
  }

  dimension: REGION {
    type: string
    sql: ${TABLE}.REGION ;;
  }
  #dimension: SALES {
   #type: number
    #sql: ${TABLE}.SALES ;;
  #}
  dimension: STORE_NAME {
    type: string
    sql: ${TABLE}.STORE_NAME ;;
  }

  measure: sales {
    type: sum
    sql: ${TABLE}.SALES ;;
  }
  measure: Average_Monthly_Sales_Per_Store {
    type: average
    sql: ${TABLE}.SALES ;;
  }

}
