# スライス型

+ 所有権のないデータ型として、`スライス型`があります。
+ コレクション内の一連の要素を参照することができます。

```rust
let s = String::from("hello world");

let hello = &s[0..5];
let world = &s[6..11];

#println!("s = {}", s);
#println!("hello = {}", hello);
#println!("world = {}", world);
```

## スライスの色々な書き方

```rust
let s = String::from("hello world");

let a = &s[0..2];
let b = &s[..2];
let c = &s[3..];
let d = &s[..];

#println!("a = {}", a);
#println!("b = {}", b);
#println!("c = {}", c);
#println!("d = {}", d);
```

## 実用的なスライスの使い方

```rust
fn main() {
        let s = String::from("hello world");
        let word = first_word(&s);
        println!("word = {}", word);
}

fn first_word(s: &String) -> &str {
        let bytes = s.as_bytes();                      // Stringをバイト配列に変換

        for (i, &item) in bytes.iter().enumerate() {   // iter()->各要素 enumerate()->(添え字, 要素の参照)
                if item == b' ' {
                        return &s[0..i];               // スライス
                }
        }

        &s[..]                                         // スライス
}
```

## 文字列リテラルはスライスである

```rust
let s = "Hello, world";
let t = &s[0..5];

#println!("t = {}", t);
```


## 配列の一部を参照するスライス

```rust
let a = [1, 2, 3, 4, 5];
let slice = &a[1..3];

for i in slice.iter() {
    #println!("slice = {}", i);
}
```
