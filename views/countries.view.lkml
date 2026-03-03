# The name of this view in Looker is "Countries"
view: countries {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: demo_db.Countries ;;
  drill_fields: [country]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: country {
    primary_key: yes
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Binary Value" in Explore.

  dimension: binary_value {
    type: string
    sql: ${TABLE}.binary_value ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  measure: count {
    type: count
    drill_fields: [country]
  }
}
