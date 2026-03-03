# The name of this view in Looker is "Test Space In Column Name"
view: test_space_in_column_name {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: demo_db.test_space_in_column_name ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Test Test" in Explore.

  dimension: test_test {
    type: number
    sql: ${TABLE}.`test test` ;;
  }
  measure: count {
    type: count
  }
}
