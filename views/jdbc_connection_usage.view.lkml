# The name of this view in Looker is "Jdbc Connection Usage"
view: jdbc_connection_usage {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: demo_db.jdbc_connection_usage ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Build Name" in Explore.

  dimension: build_name {
    type: string
    sql: ${TABLE}.build_name ;;
  }

  dimension: call_site {
    type: string
    sql: ${TABLE}.call_site ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: method_name {
    type: string
    sql: ${TABLE}.method_name ;;
  }
  measure: count {
    type: count
    drill_fields: [build_name, method_name]
  }
}
