# セレクトメニュー

## 配列に格納した値をメニューとして表示する

```sh
function select_menu(){
        PS3="Message:"

        select i in ${array[@]}
        do
                case $i in
                        $i)
                                echo "hoge";
                                break;;
                        *)
                esac
        done
}
```
