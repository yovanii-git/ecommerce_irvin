# The name of this view in Looker is "Lrjp14 E1757972862083 Testincrementalpdt"
view: lrjp14_e1757972862083_testincrementalpdt {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: demo_db.LR$JP14E1757972862083_testincrementalpdt ;;
  drill_fields: [status]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: status {
    primary_key: yes
    type: string
    sql: ${TABLE}.status ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Count Lrjp14 E1757972862083 Testincrementalpdt" in Explore.

  dimension: count_lrjp14_e1757972862083_testincrementalpdt {
    type: number
    sql: ${TABLE}.count ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created_year {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_year ;;
  }
  measure: count {
    type: count
    drill_fields: [status]
  }
}
