log = SimpleForm("log")
log.reset = false
log.submit = false
log:append(Template("r4sflasher/log"))
return log
