# 参照と借用

+ '&'記号を使用することで、所有権を受け取ることなく、データを参照することができます。
+ 関数の引数に参照をとることを、借用といいます。

```rust
fn main() {
        let a = String::from("hello"); // a -> "hello" 
        let b = &a;                    // b -> a -> "hello" 
        let c = calc_length(b);        // c = calc_length(b -> a -> "hello");
        #println!("a = {}", a);
        #println!("b = {}", b);
        #println!("c = {}", c);
}

// 借用
fn calc_length(s: &String) -> usize {
        return s.len()
}
```

## 借用した値を変更しようとしたら？

+ 変数が標準で不変なのと同じく、借用してきたものも不変となります。

```rust
fn main() {
        let s = String::from("hello");
        change(&s);
}

fn change(s: &String) {
        s.push_str(", world"); // コンパイルエラー
}
```

## 可変な参照

+ 可変な参照では、借用した先で値を変更することが可能です。
+ 可変な参照の制約として、特定のスコープ内では、ある特定のデータに対して、1つしか参照を持つことができません。

```rust
fn main() {
        let mut s = String::from("hello");
        change(&mut s);
        println!("s = {}", s);
}

fn change(s: &mut String) {
        s.push_str(", world");
}
```
