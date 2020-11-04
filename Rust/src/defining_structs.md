# 構造体

+ 構造体はタプル同様、構造体の一部を異なる型に変更することができます。
+ 一方で、各データ片に名前をつけるので、値の意味を明確にすることができます。
+ 構造体はタプルと比べて、データの順番やインスタンスの値を指定してアクセスする必要がないため、より柔軟です。

```rust
struct User {
        username: String,
        email: String,
        sign_in_count: u64,
        active: bool,
}

fn main() {
        // インスタンスの生成
        let user1 = User {
                email: String::from("user1@example.com"),
                username: String::from("user1"),
                active: true,
                sign_in_count: 1,
        };

        // インスタンスへアクセスしフィールド値を出力
        println!("user1.email = {}",user1.email);

        // 可変なインスタンスの作成
        let mut user2 = User {
                email: String::from("user2@example.com"),
                username: String::from("user2"),
                active: true,
                sign_in_count: 1,
        };

        user2.email = String::from("user2@example.co.jp");
        println!("user2.email = {}",user2.email);
}
```

## 構造体のフィールド値を受け取り、インスタンスを返す関数

```rust
struct User {
        username: String,
        email: String,
        sign_in_count: u64,
        active: bool,
}

fn build_user(email: String, username: String) -> User {
        User {
                email,            // フィールドと仮引数名が同じ場合、
                username,         // フィールド初期化省略記法を使用することができる
                active: true,
                sign_in_count:1,
        }
}

fn main() {
        let address = String::from("user3@example.com");
        let name = String::from("user3");
        let user3 = build_user(address, name);

        println!("user3.email = {}",user3.email);
        

}
```

## タプル構造体

+ 構造体名を持つが、フィールドに紐づけられた名前がなく、フィールドの型だけが存在する構造体のこと。

```rust
struct Color(i32, i32, i32);
let black= color(0, 0, 0);
```

## 構造体データの所有権

+ 構造体のインスタンスには、全データを所有してもらう必要がある
+ 構造体には、ほかの何かが所有しているデータの参照を保持させることはできるが、`ライフタイム`という概念が必要になる。
+ 以下のコードのように、`ライフタイム`を指定せずに参照を持たせることはできない。

```rust
struct User {
        username: &str,
        email: &str,
        sign_in_count:u64,
        active: bool,
}

fn main() {
        let user1 = User {
                email:"someone@example.com",
                username: "someusername123",
                active: true,
                sign_in_count: 1,
        };
}
```


## 構造体を使ったほうが良いプログラム例

+ 下記コードはうまく動作し、長方形の面積を求めることができます。
+ しかし、幾分かの改善点が見られます。
+ area関数には、引数が2つあります。引数には関連性がありますが、プログラム内ではそのことが説明されていません。

### 1. 長方形の面積を計算するプログラム

```rust
fn main() {
        let width1 = 30;
        let height1 = 50;

        println!("長方形の面積は、{} です",area(width1,height1));
}

fn area(width: u32, height: u32) -> u32 {
        width * height
}
```
### 2. タプルでリファクタリングする

+ 引数に関連性があるという意味では、先ほどのコードよりはマシになりました。
+ しかし、タプル要素には名前を付けられないため、なんの計算をしているか不明瞭になってしまいました。

```rust
fn main() {
        let rect1 = (30, 50);
        println!("長方形の面積は、{} です",area(rect1));
}

fn area(dimensions: (u32, u32)) -> u32 {
        dimensions.0 * dimensions.1
}
```

### 3. 構造体でリファクタリングする

+ 構造体を使用することで、area関数の引数は一つになりました。
+ かつ、それぞれの値に説明的な名前を付けくわえられたことで、プログラムの意図が明確になりました。

```rust
struct Rectangle {
        width: u32,
        height: u32,
}

fn main() {
        let rect1 = Rectangle { width: 30, height: 50 };
        println!("長方形の面積は、{} です",area(&rect1));
}

fn area(rect: &Rectangle) -> u32 {
        rect.width * rect.height
}
```
