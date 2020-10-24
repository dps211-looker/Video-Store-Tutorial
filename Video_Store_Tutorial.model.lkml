connection: "connection_name"
include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/view.lkml"                   # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

#********************************************************************
# Date: 10/22/2020
# The model defines includes various views in this project
# Video Analysis Informantion, Stores and Sales Details, MOnthly Sales Analysis, Products
#
#********************************************************************

explore: monthly_sales_analysis {}
explore: products {}
explore: stores_and_sales_details {}
explore: video_store_information {}
