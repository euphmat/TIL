# 基本的な文法と概念

## 変数宣言

```rust
// 不変変数の宣言
let x = 5;
#println!("x = {}",x);

// 可変変数の宣言
let mut y = 5;
#println!("y = {}",y);

// 定数の宣言
const Z: u32 = 100_000; // 型注釈が必要
#println!("Z = {}",Z);
```

## シャドーイング

+ `mut`との違いは、新しい変数を生成しているか、そうでないか。
+ 変数を生成しなおすことで、値の加工や値の型を変えつつ、変数名を使いまわすことができる
```rust
let x = 5;      // 5
let x = x + 1;  // 6 
let x = x * 2;  // 12
#println!("x = {}",x);

let space = "   ";       // 文字列型
let space = space.len(); // 整数型 3
#println!("space = {}",space);
```

## データ型

```rust
// 整数型 [i]:符号付き [u]:符号なし
let a: i8 = -128; // i8, i16, i32, i64, isize
let b: u8 =  255; // u8, u16, u32, u64, usize
#println!("a = {}",a);
#println!("b = {}",b);

// 浮動小数点型
let c      = 2.0; // f64
let d: f32 = 3.0; // f32
#println!("c = {}",c);
#println!("d = {}",d);

// 論理値型
let e       = true;
let f: bool = false;
#println!("e = {}",e);
#println!("f = {}",f);

// 文字型
let g = 'z';
let h = 'π';
let i = '燐';
#println!("g = {}",g);
#println!("h = {}",h);
#println!("i = {}",i);

// タプル型
let j = (1, 2.3, 3);
let k:(i8, f32) = (124, 4.1);
#println!("j.0 = {}",j.0);
#println!("j.1 = {}",j.1);
#println!("j.2 = {}",j.2);
#println!("k.0 = {}",k.0);
#println!("k.1 = {}",k.1);

// 配列型
let l = [1, 2, 3, 4, 5];
#println!("l[0] = {}",l[0]);
#println!("l[1] = {}",l[1]);
#println!("l[2] = {}",l[2]);
#println!("l[3] = {}",l[3]);
#println!("l[4] = {}",l[4]);
```

## 関数

```rust
// 一番最初に実行される関数
fn main() {
        another_function();
        sum(237,167);
        println!("multiplication = {}",multiplication(2, 6));
}

// 返り値を持たない関数
fn another_function() {
        println!("Another Function");
}

// 実引数を受け取り、それを出力する関数 
fn sum(x: i32, y: i32) {
        println!("sum = {}",x + y);
}

// 実引数を受け取り、それを処理して返す関数(return は省略できる)
fn multiplication(x: i32, y: i32) -> i32 {
        x * y // println!()の、パラメータへ設定するように、セミコロンをつけてはいけない。
}
```

## if式

