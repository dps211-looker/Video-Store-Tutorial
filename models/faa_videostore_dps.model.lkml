#Test github push
connection: "disco_db_connection"
include: "/views/*.view.lkml"

datagroup: faa_videostore_dps_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: faa_videostore_dps_default_datagroup

explore: product {}
explore : sales_fact {}
explore: store {}
explore: target_sales {}
#explore: fiscal_date {}
explore: calendar_date {}
explore: video_analysis_information{}
explore: stores_and_sales_details{}
explore : monthly_sales_analysis{
  join: times {
    sql_on: ${times.time_key} = ${sales_fact.time_key} ;;
    type: left_outer
    relationship: many_to_one
  }
  join: product {
    sql_on: ${product.product_key} = ${sales_fact.product_key} ;;
    type: left_outer
    relationship: many_to_one
  }
    join: store {
    sql_on: ${store.store_key} = ${sales_fact.store_key} ;;
    type: left_outer
    relationship: many_to_one
  }
  join: sales_fact {
    sql_on: ${product.product_key} = ${sales_fact.product_key} ;;
    type: left_outer
    relationship: many_to_one
  }
}
