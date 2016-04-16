Before do |scenario|
  @collected_errors = []
end

After do |scenario|
  fail "#{@collected_errors}" unless @collected_errors.empty?
end