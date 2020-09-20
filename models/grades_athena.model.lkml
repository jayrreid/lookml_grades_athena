connection: "athena_formation_demo"
include: "*.view" # include all the views


datagroup: grades_athena_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: grades_athena_default_datagroup

explore: grades {
  label: "Grades"
  view_name: grades
}
