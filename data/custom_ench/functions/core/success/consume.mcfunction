#> custom_ench:core/success/consume
# 素材を消費させる
# @internal

    execute store result score $Add.Count CE.Temporary run data get entity @s Item.Count 1.0
# 数が1個ならkill
    execute if score $Add.Count CE.Temporary matches 1 run kill @s

# 複数個なら1つ減らす
    scoreboard players remove $Add.Count CE.Temporary 1
    execute store result entity @s Item.Count byte 1.0 run scoreboard players get $Add.Count CE.Temporary