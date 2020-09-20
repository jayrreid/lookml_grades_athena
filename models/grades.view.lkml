view: grades {
  sql_table_name: lake_formation_tutorial.jdbctest_mydb_grades ;;

  dimension: final {
    type: number
    sql: ${TABLE}.final ;;
  }

  dimension: firstname {
    type: string
    sql: ${TABLE}.firstname ;;
  }

  dimension: grade {
    type: string
    sql: ${TABLE}.grade ;;
  }

  dimension: lastname {
    type: string
    sql: ${TABLE}.lastname ;;
  }

  dimension: ssn {
    type: string
    sql: ${TABLE}.ssn ;;
  }

  dimension: test1 {
    type: number
    sql: ${TABLE}.test1 ;;
  }

  dimension: test2 {
    type: number
    sql: ${TABLE}.test2 ;;
  }

  dimension: test3 {
    type: number
    sql: ${TABLE}.test3 ;;
  }

  dimension: test4 {
    type: number
    sql: ${TABLE}.test4 ;;
  }

  dimension: avg_test_score {
    type:  number
    sql:  (${TABLE}.test1 + ${TABLE}.test2 + ${TABLE}.test3 + ${TABLE}.test4) / 4 ;;

  }

  measure: count {
    type: count
    drill_fields: [firstname, lastname]
  }

  measure: average_test {
    type: average
    value_format_name: decimal_2
    sql: ${avg_test_score} ;;
    drill_fields: [firstname, lastname, ssn, grade,test1, test2, test3, test4,avg_test_score]
  }

  measure: average_final {
    type: average
    value_format_name: decimal_2
    sql: ${final} ;;
    drill_fields: [firstname, lastname, ssn, grade,final]
  }


}
