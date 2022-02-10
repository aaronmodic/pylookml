  connection: "bytecode_postgres" include: "/views/**/*.view" 


explore: customers {
}
explore: orders {
  join: customers {
      type: left_outer
      sql_on: ${orders.customer_id} = ${customers.customer_id} ;;
      relationship: many_to_one 
  } 
}
explore: test {
}