# メソッド記法

+ メソッドは関数ににています。
  + `fn`キーワードで宣言される
  + 引数と返り値がある
  + どこか別の場所で呼びだれたときに実行されるコードを含みます。

+ ただし、メソッドは構造体の文脈、enum、トレイトオブジェクトで定義されるという点で関数とは異なる。
+ また、最初の引数は必ず`self`となり、メソッドが呼び出されている構造体インスタンスを表す。

```rust 
// デバッグ出力を有効化 構造体に使用可能 使用時は{:?}
#[derive(Debug)]

// 構造体
struct Rectangle { width: u32, height: u32, }

// メソッドを定義 impl (implementation:実装)
impl Rectangle {
        // 引数は、(rect: &Rectamgle)ではなく、(&self)を使用する。
        // impl Rectangle内に存在するため、(&self)の型はRecatangleであると把握されている。
        // (&self)に&が付いていることにも注目。selfはほかの引数同様、所有権を奪ったり借用することができる。
        // 読み込み専用(&self) 書き込みもする(&self) 所有権を奪う(self)
        fn area(&self) -> u32 { self.width * self.height }
}

fn main() {
        let rect1 = Rectangle { width: 30, height: 50 };
        println!("長方形の面積は {} です。",rect1.area());  // メソッド記法
}
```

## より引数の多いメソッド

```rust
// 構造体
struct Rectangle { width: u32, height: u32, }

fn main() {
        let rect1 = Rectangle { width: , height: };
        let rect2 = Rectangle { width: , height: };
        let rect3 = Rectangle { width: , height: };
}

```

```rust
fn main() {
        let a = 5;
        a = 6;
        println!("a = {}", a);
}
```
