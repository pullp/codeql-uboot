import cpp


from FunctionCall fc
where fc.getTarget().hasName("memcpy")
select fc, "find ad memcpy call"

// where f.getName() = "memcpy" and fc.getTarget() = f