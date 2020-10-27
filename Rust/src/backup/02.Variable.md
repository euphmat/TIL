# Variable 

## 不変変数

+ Rustの変数は標準で不変である
+ 下記コードは変数`x`に値を再度代入しようとしているため、コンパイルエラーが発生する
```rust
#fn main() {
let x = 5;
println!("x = {}", x);
x = 6;
println!("x = {}", x);
#}
```

## 可変変数

+ 変数宣言時、変数名の前に`mut`というキーワードを付けることで可変にすることが可能
+ 下記コードはコンパイルエラーにならず、実行することができる

```rust
#fn main() {
let mut x = 5;
println!("x = {}", x);
x = 6;
println!("x = {}", x);
#}
```

## 定数

+ 不変定数とは違い、`const`キーワードで宣言し、値の型を記載しなければらならない

```rust
# fn main(){
const MAX_POINTS: u32 = 100_000;
#}
```

## シャドーイング

+ 既に宣言されている変数名に対して、再度`let`を使用した場合、新しい変数を生成することになる

```rust
#fn main() {
let x = 5;
let x = x + 1;
let x = x * 2;
println!("x = {}",x);
#}
```

+ 再生成する場合、型が変わっても良い

```rust
#fn main() {
let spaces = "       ";    // str
let spaces = spaces.len(); // int
println!("spaces = {}", spaces);
#}
```

+ 可変変数の場合、型が変わってしまうとコンパイルエラーとなる

```rust
#fn main() {
let mut spaces = "       ";    // str
spaces = spaces.len(); // int
println!("spaces = {}", spaces);
#}
```

