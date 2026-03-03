# The name of this view in Looker is "Demo Visits Data"
view: demo_visits_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: demo_db.demo_visits_data ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Care Recipient First Name" in Explore.

  dimension: care_recipient_first_name {
    type: string
    sql: ${TABLE}.care_recipient_first_name ;;
  }

  dimension: care_recipient_id {
    type: string
    sql: ${TABLE}.care_recipient_id ;;
  }

  dimension: care_recipient_last_name {
    type: string
    sql: ${TABLE}.care_recipient_last_name ;;
  }

  dimension: is_fake {
    type: number
    sql: ${TABLE}.is_fake ;;
  }

  dimension: is_internal_agency {
    type: number
    sql: ${TABLE}.is_internal_agency ;;
  }

  dimension: local_authority_number {
    type: string
    sql: ${TABLE}.local_authority_number ;;
  }

  dimension: reported_duration_mins {
    type: number
    sql: ${TABLE}.reported_duration_mins ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: reported_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.reported_end_at ;;
  }

  dimension_group: reported_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.reported_start_at ;;
  }

  dimension: scheduled_duration_mins {
    type: number
    sql: ${TABLE}.scheduled_duration_mins ;;
  }

  dimension_group: scheduled_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.scheduled_end_at ;;
  }

  dimension_group: scheduled_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.scheduled_start_at ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.user_name ;;
  }

  dimension: visit_completed {
    type: number
    sql: ${TABLE}.visit_completed ;;
  }

  dimension: visit_date {
    type: string
    sql: ${TABLE}.visit_date ;;
  }
  measure: count {
    type: count
    drill_fields: [care_recipient_first_name, care_recipient_last_name, user_name]
  }
}
