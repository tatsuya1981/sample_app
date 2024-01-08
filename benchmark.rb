require 'benchmark'

STRING_HASH = { 'inu' => 'wan' }
SYMBOL_HASH = { :inu  => 'wan' }
NUMBER_HASH = { 111   => 'wan' }
str,sym,num = 'inu', :inu, 111

n = 100_000_000
Benchmark.bmbm do |x|
  x.report('String') { n.times { STRING_HASH[str] }}
  x.report('Symbol') { n.times { SYMBOL_HASH[sym] }}
  x.report('Number') { n.times { NUMBER_HASH[num] }}
end