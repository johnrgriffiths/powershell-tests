function log($this, $status=0) {
  if($status -eq 1) {
    write-error $this
    [Console]::Out.Flush()
    exit 1
  }
  else {
    write-host $this
    [Console]::Out.Flush()
  }
}

log("This is step 1")
log("This is step 2")
log("This is an error", 1)
