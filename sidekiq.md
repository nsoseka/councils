
#Building advanced background workers with sidekiq batches.

This is really cool because it allows you to take a set of background jobs that are running and then batch them together so when they are finished you can call a callback and actually go from.

* serial execution to parallel back to serial execution
normally when you are using background jobs, you are going from rails which is running in serial to parallel and then you are done, but this is important for complex workflows because alot of times when you are building something like hatchbox
