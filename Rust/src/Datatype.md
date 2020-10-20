# DataType

+ Rustは静的型付き言語である
  + コンパイル時にすべての変数の型が判明している必要がある

## スカラー型

+ スカラー型は単独の値を表す
+ 主に4つのスカラー型が存在する
+ `整数`,`浮動小数点数`,`論理値`,`文字`

### 整数型

+ 小数部分のない数値
+ 符号付きの整数には`i`が付き、符号なしの整数には`u`が付く。

```rust
#fn main() {
let a: u8;
let b: i16;
let c: u32;
let d: i64;
#}
```

### 浮動小数点数型

```rust
#fn main() {
let a: f32;
let b: f64;
#}
```

### 論理値型

```rust
#fn main() {
let t = true;
let f: bool = false;
#}
```

### 文字型

```rust
#fn main() {
let c = 'z';
#}
