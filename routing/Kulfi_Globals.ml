open Core.Std

let budget        = ref Int.max_value
let deloop        = ref false
let failure_time  = ref Int.max_value
let flash_recover = ref false
let global_recovery_delay = ref Int.max_value
let gurobi_method = ref Int.minus_one
let local_recovery_delay = ref Int.max_value
let tm_sim_iters  = ref 1000
