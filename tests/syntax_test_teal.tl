-- SYNTAX TEST "Packages/tealsyntax/teal.sublime-syntax" 




    -- Comment
--  ^^ punctuation.definition.comment.teal
--     ^^^^^^^ comment.line.teal

    aaaaa
--  ^ variable.other.teal

    1
--  ^ constant.numeric.teal

    1.1
--  ^^^ constant.numeric.teal

    "str"
--  ^ string.quoted.double.teal punctuation.definition.string.begin.teal
--   ^^^^ string.quoted.double.teal
--      ^ punctuation.defintion.string.end.teal

    "-- asdf"
--      ^^^^ string.quoted.double.teal

    'str'
--  ^ string.quoted.single.teal punctuation.definition.string.begin.teal
--      ^ string.quoted.single.teal punctuation.defintion.string.end.teal
--  ^^^^^ string.quoted.single.teal meta.string.teal


    if 
--  ^^ keyword.control.conditional.teal

    for 
--  ^^^ keyword.control.loop.teal

    a = 1
--  ^ variable.other.teal
--    ^ keyword.operator.assignment.teal
--      ^ constant.numeric.teal

