require 'benchmark'

STRING_HASH = {'hogehogehogehogehoge' => 'barbarbarbarbarbarbarbarbat', 'foo'=>'fuga'}
SYMBOL_HASH = { :hogehogehogehogehoge => 'bar', foo: 'fuga'}
NUMBER_HASH = {100000000000000 => 'bar', 100 => 'fuga'}
str = 'hogehogehogehogehoge'
sym = :hogehogehogehogehoge
num = 100000000000000

str2 = 'foo'
sym2 = :foo
num2 = 100

n = 100_000_000

Benchmark.bmbm do |x|
    x.report('String') {n.times{STRING_HASH[str]}}
    x.report('Symbol') {n.times { SYMBOL_HASH[sym]}}
    x.report('Number') {n.times { SYMBOL_HASH[num]}}
    x.report('String2')   {n.times{STRING_HASH[str2]}}
    x.report('Symbol2') {n.times { SYMBOL_HASH[sym2]}}
    x.report('Number2') {n.times { SYMBOL_HASH[num2]}}
end
