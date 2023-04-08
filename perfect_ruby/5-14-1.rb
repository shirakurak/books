# 定義済みのクラスを出力する
ObjectSpace.each_object(Class) { |c| p c }

a = [4, 4, 2, 3]
a.object_id # => ...
ObjectSpace.id2ref(a.object_id) # => [4, 4, 2, 3]

o = Object.new # 何かのオブジェクト
ObjectSpace.define_finalizer(o, proc { puts 'finalizing...' })
