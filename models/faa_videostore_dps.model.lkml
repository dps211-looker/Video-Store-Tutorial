#Test github push
connection: "disco_db_connection"
include: "/views/*.view.lkml"

datagroup: faa_videostore_dps_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: faa_videostore_dps_default_datagroup

explore: product {}
explore : sales_fact {
  label: "Monthly Sales Analysis1"
  join: store {
    sql_on: ${sales_fact.store_key} = ${store.store_key} ;;
    type: inner
    relationship: one_to_one
    }
  join: product {
    sql_on: ${sales_fact.product_key} = ${product.product_key} ;;
    type: inner
    relationship: one_to_one
  }
  join: times {
    sql_on: ${sales_fact.time_key} = ${times.time_key} ;;
    type: inner
    relationship: one_to_one
  }
}
explore: store {}
explore: target_sales {}
#explore: fiscal_date {}
explore: calendar_date {}
explore: video_analysis_information{}
explore: stores_and_sales_details{}
explore:  monthly_sales_tables_dt{}
explore: monthly_sales_info {
  view_name: monthly_sales_info
  #extends: [times, product, store, sales_fact]
  join: times {
    from: times
    sql_on: ${times.time_key} = ${monthly_sales_info.Transaction_month} ;;
    type: left_outer
    relationship: many_to_one
  }
  join: product {
    from: product
    sql_on: ${product.product_key} = ${monthly_sales_info.product_key} ;;
    type: left_outer
    relationship: many_to_one
  }
  join: store {
    from: store
    sql_on: ${store.store_key} = ${monthly_sales_info.store_key} ;;
    type: left_outer
    relationship: many_to_one
  }

}
explore: times {}
explore : monthly_sales_analysis{

  join: store {
    sql_on: ${monthly_sales_analysis.store_key_foreign} = ${store.store_key} ;;
    type: inner
    relationship: one_to_one
  }
  join: product {
    sql_on: ${monthly_sales_analysis.product_key_foreign} = ${product.product_key} ;;
    type: inner
    relationship: one_to_one
  }
  join: times {
    sql_on: ${monthly_sales_analysis.time_key_foreign} = ${times.time_key} ;;
    type: inner
    relationship: one_to_one
  }
  join: sales_fact{
    sql_on: ${sales_fact.product_key} = ${monthly_sales_analysis.product_key_foreign} AND ${sales_fact.time_key} = ${monthly_sales_analysis.time_key_foreign} AND ${sales_fact.store_key} = ${monthly_sales_analysis.store_key_foreign};;
    type: inner
    relationship: one_to_one
  }
}
