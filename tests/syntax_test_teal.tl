-- SYNTAX TEST "Packages/tealsyntax/teal.sublime-syntax" 




    -- Comment
--  ^^ punctuation.definition.comment.teal
--     ^^^^^^^ comment.line.teal

    aaaaa
--  ^ variable.other.teal

    1
--  ^ meta.number.integer.decimal.teal constant.numeric.value.teal
    -1
--  ^ keyword.operator.arithmetic.teal


    1.1;
--  ^^^ meta.number.float.decimal.teal constant.numeric.value.teal
--   ^ constant.numeric.value.teal punctuation.separator.decimal.teal

    1.;
--  ^^ meta.number.float.decimal.teal constant.numeric.value.teal
--   ^ constant.numeric.value.teal punctuation.separator.decimal.teal

    .2;
--  ^^ meta.number.float.decimal.teal constant.numeric.value.teal
--  ^ constant.numeric.value.teal punctuation.separator.decimal.teal


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
    
    "and"
--  ^ string.quoted.double.teal meta.string.teal punctuation.definition.string.begin.teal
--   ^^^^ string.quoted.double.teal meta.string.teal

    true
--  ^^^^ constant.language.boolean.teal

    false 
--  ^^^^^ constant.language.boolean.teal

    nil;
--  ^^^ constant.language.null.teal

    ...;
--  ^^^ constant.language.teal
--     ^ punctuation.terminator.statement.teal

    self;

    1;
--   ^ punctuation.terminator.statement.teal

    a = 1
--  ^ variable.other.teal
--    ^ keyword.operator.assignment.teal

    a = 1 + 1 - 1 * 1 / 1 % 1
--        ^ keyword.operator.arithmetic.teal 
--            ^ keyword.operator.arithmetic.teal
--                ^ keyword.operator.arithmetic.teal
--                    ^ keyword.operator.arithmetic.teal
--                        ^ keyword.operator.arithmetic.teal
 
    a = (1 + 1) 
--      ^ meta.group.teal punctuation.section.group.begin.teal
--       ^ meta.group.teal meta.number.integer.decimal.teal constant.numeric.value.teal
--            ^ meta.group.teal punctuation.section.group.end.teal

    a = (1 + (b / 2) - 1) * c
--           ^ meta.group.teal meta.group.teal punctuation.section.group.begin.teal
--                          ^ variable.other.teal
    a = true
--      ^^^^ constant.language.boolean.teal

    a = nil
--      ^^^ constant.language.null.teal

    a = 1 // 1
--        ^^ keyword.operator.arithmetic.teal

    not true;
--  ^^^ keyword.operator.logical.teal
--      ^^^^ constant.language.boolean.teal

    2 + 2 - 2 * 2 / 2 // 2 % 2 ^ 2;   
--    ^ keyword.operator.arithmetic.teal
--        ^ keyword.operator.arithmetic.teal
--            ^ keyword.operator.arithmetic.teal
--                ^ keyword.operator.arithmetic.teal
--                    ^^ keyword.operator.arithmetic.teal
--                         ^ keyword.operator.arithmetic.teal
--                             ^ keyword.operator.arithmetic.teal

    2 >> 2 << 2 & 2 | 2 ~ 2;
--    ^^ keyword.operator.bitwise.teal
--         ^^ keyword.operator.bitwise.teal
--              ^ keyword.operator.bitwise.teal
--                  ^ keyword.operator.bitwise.teal
--                      ^ keyword.operator.bitwise.teal

    2 > 2; 2 < 2; 2 == 2; 2 >= 2; 2 <= 2; 2 ~= 2;
--    ^ keyword.operator.comparison.teal
--           ^ keyword.operator.comparison.teal
--                  ^^ keyword.operator.assignment.teal
--                          ^^ keyword.operator.comparison.teal
--                                  ^^ keyword.operator.comparison.teal
--                                          ^^ keyword.operator.comparison.teal


    "foo" .. "bar"
--        ^^ keyword.operator.concatenation.teal
    
    x = 42
--    ^ keyword.operator.assignment.teal

    x[22] = 22;
--  ^ variable.other.teal
--   ^ meta.brackets.teal punctuation.section.brackets.begin.teal
--    ^^ meta.brackets.teal meta.number.integer.decimal.teal constant.numeric.value.teal
--      ^ meta.brackets.teal punctuation.section.brackets.end.teal

    true and false or nil;
--       ^^^ keyword.operator.logical.teal
--                 ^^ keyword.operator.logical.teal

    foo()
--  ^^^ meta.function-call.teal variable.function.teal
--     ^ meta.function-call.arguments.teal punctuation.section.group.begin.teal
--      ^ meta.function-call.arguments.teal punctuation.section.group.end.teal

    foo( bar(x + 22) + 1)
--  ^^^ meta.function-call.teal variable.function.teal
--     ^ meta.function-call.arguments.teal meta.group.teal punctuation.section.group.begin.teal
--       ^^^ meta.function-call.arguments.teal meta.group.teal meta.function-call.teal variable.function.teal
--          ^ meta.function-call.arguments.teal meta.group.teal meta.function-call.arguments.teal meta.group.teal punctuation.section.group.begin.teal
--           ^ meta.function-call.arguments.teal meta.group.teal meta.function-call.arguments.teal meta.group.teal variable.other.teal

    a[1]
--  ^ variable.other.teal
--   ^ meta.brackets.teal punctuation.section.brackets.begin.teal 
--    ^ meta.brackets.teal meta.number.integer.decimal.teal constant.numeric.value.teal
--     ^ meta.brackets.teal punctuation.section.brackets.end.teal


    a_1
--  ^^^ variable.other.teal
    


    (get_callback)(22) 
--  ^ meta.group.teal punctuation.section.group.begin.teal
--   ^^^^^^^^^^^^ meta.group.teal variable.other.teal
--               ^ meta.group.teal punctuation.section.group.end.teal
--                ^ meta.function-call.arguments.teal meta.group.teal punctuation.section.group.begin.teal
--                 ^^ meta.function-call.arguments.teal meta.group.teal meta.number.integer.decimal.teal constant.numeric.value.teal
--                   ^ meta.function-call.arguments.teal meta.group.teal punctuation.section.group.end.teal


    foo(1, 2, bar(1, 2))
--  ^^^ meta.function-call.teal variable.function.teal
--     ^ meta.function-call.arguments.teal meta.group.teal punctuation.section.group.begin.teal
--      ^ meta.function-call.arguments.teal meta.group.teal meta.number.integer.decimal.teal constant.numeric.value.teal
--       ^ meta.function-call.arguments.teal meta.group.teal punctuation.separator.comma.teal
--         ^ meta.function-call.arguments.teal meta.group.teal meta.number.integer.decimal.teal constant.numeric.value.teal
--                ^ meta.function-call.arguments.teal meta.group.teal meta.function-call.arguments.teal meta.group.teal meta.number.integer.decimal.teal constant.numeric.value.teal

    foo()()
--  ^^^ meta.function-call.teal variable.function.teal
--       ^ meta.function-call.arguments.teal meta.group.teal punctuation.section.group.begin.teal

    (array_var)[22]
--  ^ meta.group.teal punctuation.section.group.begin.teal
--   ^^^^^^^^^ meta.group.teal variable.other.teal
--            ^ meta.group.teal punctuation.section.group.end.teal
--             ^ meta.brackets.teal punctuation.section.brackets.begin.teal
--              ^^ meta.brackets.teal meta.number.integer.decimal.teal constant.numeric.value.teal
--                ^ meta.brackets.teal punctuation.section.brackets.end.teal


    a["foo"]
--  ^ variable.other.teal
--   ^ meta.brackets.teal punctuation.section.brackets.begin.teal
--    ^ meta.brackets.teal string.quoted.double.teal meta.string.teal punctuation.definition.string.begin.teal
--     ^^^^ meta.brackets.teal string.quoted.double.teal meta.string.teal
--         ^ meta.brackets.teal punctuation.section.brackets.end.teal

    (((try())))    
--  ^ meta.group.teal punctuation.section.group.begin.teal
--     ^^^ meta.group.teal meta.group.teal meta.group.teal meta.function-call.teal variable.function.teal

    a[1][1]
--  ^ variable.other.teal
--   ^ meta.brackets.teal punctuation.section.brackets.begin.teal
--    ^ meta.brackets.teal meta.number.integer.decimal.teal constant.numeric.value.teal
--     ^ meta.brackets.teal punctuation.section.brackets.end.teal
--      ^ meta.brackets.teal punctuation.section.brackets.begin.teal
--       ^ meta.brackets.teal meta.number.integer.decimal.teal constant.numeric.value.teal
--        ^ meta.brackets.teal punctuation.section.brackets.end.teal

    a[1]()
--     ^ meta.brackets.teal punctuation.section.brackets.end.teal
--      ^ meta.function-call.arguments.teal meta.group.teal punctuation.section.group.begin.teal

    a()[1]
--  ^ meta.function-call.teal variable.function.teal
--   ^ meta.function-call.arguments.teal meta.group.teal punctuation.section.group.begin.teal
--     ^ meta.brackets.teal punctuation.section.brackets.begin.teal 

    foo.bar
--  ^^^ variable.other.teal
--     ^ punctuation.accessor.teal
--      ^^^ meta.property.teal variable.other.teal

    foo.bar.baz.try
--            ^ meta.property.teal variable.other.teal

    foo.bar()
--  ^^^ meta.property.teal variable.other.teal
--     ^ punctuation.accessor.teal
--      ^^^ meta.property.teal meta.function-call.teal variable.function.teal
--         ^ meta.group.teal punctuation.section.group.begin.teal

    foo . bar()
--  ^^^ variable.other.teal
--      ^ punctuation.accessor.teal
--        ^^^ meta.property.teal meta.function-call.teal variable.function.teal
--           ^ meta.function-call.arguments.teal meta.group.teal punctuation.section.group.begin.teal

    foo.bar().baz()
--            ^^^ meta.property.teal meta.function-call.teal variable.function.teal

    foo.bar(1, 2)
--          ^ meta.function-call.arguments.teal meta.group.teal meta.number.integer.decimal.teal constant.numeric.value.teal
--           ^ meta.function-call.arguments.teal meta.group.teal punctuation.separator.comma.teal           

    foo.bar().baz(1, 2)
--                ^ meta.function-call.arguments.teal meta.group.teal meta.number.integer.decimal.teal constant.numeric.value.teal
--                 ^ meta.function-call.arguments.teal meta.group.teal punctuation.separator.comma.teal

    foo.bar()[12]
--          ^ meta.function-call.arguments.teal meta.group.teal punctuation.section.group.end.teal
--           ^ meta.brackets.teal punctuation.section.brackets.begin.teal

    foo.bar()()
--          ^ meta.function-call.arguments.teal meta.group.teal punctuation.section.group.end.teal
--           ^ meta.function-call.arguments.teal meta.group.teal punctuation.section.group.begin.teal

    foo:bar()
--     ^ punctuation.accessor.teal

    foo(bar() + x[1] + 22 * baz()(1, 2)[22])
--                                ^ meta.function-call.arguments.teal meta.group.teal meta.function-call.arguments.teal meta.group.teal meta.number.integer.decimal.teal constant.numeric.value.teal

    foo.bar[1]
--  ^^^ variable.other.teal
--     ^ punctuation.accessor.teal
--      ^^^ meta.property.teal variable.other.teal
--         ^ meta.brackets.teal punctuation.section.brackets.begin.teal
--          ^ meta.brackets.teal meta.number.integer.decimal.teal constant.numeric.value.teal
--           ^ meta.brackets.teal punctuation.section.brackets.end.teal

    ;
--  ^ punctuation.terminator.statement.teal


    foo() = 12;
--  ^^^ meta.function-call.teal variable.function.teal
--        ^ keyword.operator.assignment.teal

    {}
--  ^ meta.mapping.teal punctuation.section.block.begin.teal
--   ^ meta.mapping.teal punctuation.section.block.end.teal
    
    {1, 2}
--    ^ meta.mapping.teal punctuation.separator.field.teal

    {a, b}
--    ^ meta.mapping.teal punctuation.separator.field.teal

    {a; b}
--    ^ meta.mapping.teal punctuation.separator.field.teal

    { 
--  ^ meta.mapping.teal punctuation.section.block.begin.teal
        a = 1
--      ^ meta.mapping.key.teal string.unquoted.key.teal
--        ^ meta.mapping.teal punctuation.separator.key-value.teal
--          ^ meta.mapping.teal meta.number.integer.decimal.teal constant.numeric.value.teal
    }

    {[a] = 1, b = 23, c = "str"}
--  ^ meta.mapping.teal punctuation.section.block.begin.teal
--   ^ meta.mapping.key.teal meta.brackets.teal meta.brackets.teal punctuation.section.brackets.begin.teal

    {a = foo()}
--       ^^^ meta.mapping.teal meta.function-call.teal variable.function.teal

    {[a] = 1}
--  ^ meta.mapping.teal punctuation.section.block.begin.teal
--   ^ meta.mapping.key.teal meta.brackets.teal meta.brackets.teal punctuation.section.brackets.begin.teal
--    ^ meta.mapping.key.teal meta.brackets.teal variable.other.teal
--     ^ meta.mapping.key.teal meta.brackets.teal meta.brackets.teal punctuation.section.brackets.end.teal

    a[1, 2]
--    ^ meta.brackets.teal meta.number.integer.decimal.teal constant.numeric.value.teal


    #a
--  ^ keyword.operator.length.teal

    {a, b + c, c};
--  ^ meta.mapping.teal punctuation.section.block.begin.teal
--   ^ meta.mapping.teal variable.other.teal
--    ^ meta.mapping.teal punctuation.separator.field.teal
--      ^ meta.mapping.teal variable.other.teal
--        ^ meta.mapping.teal keyword.operator.arithmetic.teal
--          ^ meta.mapping.teal variable.other.teal
--           ^ meta.mapping.teal punctuation.separator.field.teal
--             ^ meta.mapping.teal variable.other.teal
--              ^ meta.mapping.teal punctuation.section.block.end.teal

    not a
--  ^^^ keyword.operator.logical.teal

    a = true 
--  ^ variable.other.teal
--    ^ keyword.operator.assignment.teal
--      ^^^^ constant.language.boolean.teal

    if true then
--  ^^ keyword.control.conditional.teal
--     ^^^^ constant.language.boolean.teal
        a = 1
--      ^ meta.block.teal variable.other.teal
    elseif false then
--  ^^^^^^ meta.block.teal keyword.control.conditional.teal
--         ^^^^^ constant.language.boolean.teal
--               ^^^^ meta.block.teal keyword.control.conditional.teal
        a = 2
--      ^ meta.block.teal variable.other.teal
--        ^ meta.block.teal keyword.operator.assignment.teal
--          ^ meta.block.teal meta.number.integer.decimal.teal constant.numeric.value.teal
    end
--  ^^^ meta.block.teal keyword.control.end.teal

    (not nil)
--  ^ meta.group.teal punctuation.section.group.begin.teal
--   ^^^ meta.group.teal keyword.operator.logical.teal
--       ^^^ meta.group.teal constant.language.null.teal


    function foo(a, ...)
--  ^^^^^^^^ meta.function.teal keyword.declaration.function.teal
--           ^^^ entity.name.function.teal meta.function.teal meta.block.teal meta.name.function.teal
        a = 1
    end


    function foo()
        return 100
--      ^^^^^^ meta.function.teal meta.block.teal keyword.control.return.teal
    end


    if true then 
        if true then
            if true then
--          ^^ meta.block.teal meta.block.teal keyword.control.conditional.teal
            end
        end
    end
  

    if (true) then
        function foo()
            b = 1
--          ^ meta.block.teal meta.function.teal meta.block.teal variable.other.teal
        end
    end

    do 
--  ^^ meta.block.teal keyword.control.teal
        a = 1
--      ^ meta.block.teal variable.other.teal
--        ^ meta.block.teal keyword.operator.assignment.teal
--          ^ meta.block.teal meta.number.integer.decimal.teal constant.numeric.value.teal
    end
--  ^^^ meta.block.teal keyword.control.end.teal


    while true do 
--  ^^^^^ keyword.control.teal
--        ^^^^ constant.language.boolean.teal
--             ^^ meta.block.teal keyword.control.conditional.teal
        a = 1
--      ^ meta.block.teal variable.other.teal
--        ^ meta.block.teal keyword.operator.assignment.teal
--          ^ meta.block.teal meta.number.integer.decimal.teal constant.numeric.value.teal
    end
--  ^^^ meta.block.teal keyword.control.end.teal

    repeat
--  ^^^^^^ meta.block.teal keyword.control.teal
        a = 1
--      ^ meta.block.teal variable.other.teal
--        ^ meta.block.teal keyword.operator.assignment.teal
--          ^ meta.block.teal meta.number.integer.decimal.teal constant.numeric.value.teal
    until true
--  ^^^^^ meta.block.teal keyword.control.end.teal
--        ^^^^ constant.language.boolean.teal

    for i = 1, 5 do
--  ^^^ keyword.control.loop.teal
--      ^ variable.other.teal
--        ^ keyword.operator.assignment.teal
--          ^ meta.number.integer.decimal.teal constant.numeric.value.teal
--           ^ punctuation.separator.comma.teal
--             ^ meta.number.integer.decimal.teal constant.numeric.value.teal
--               ^^ meta.block.teal keyword.control.loop.teal

        print("Iteration:", i)
--      ^^^^^ meta.block.teal meta.function-call.teal variable.function.teal
    end
--  ^^^ meta.block.teal keyword.control.end.teal

    for x = 1, y, z do end
--  ^^^ keyword.control.loop.teal
--      ^ variable.other.teal
--        ^ keyword.operator.assignment.teal
--          ^ meta.number.integer.decimal.teal constant.numeric.value.teal
--           ^ punctuation.separator.comma.teal
--             ^ variable.other.teal
--              ^ punctuation.separator.comma.teal
--                ^ variable.other.teal
--                  ^^ meta.block.teal keyword.control.loop.teal
--                     ^^^ meta.block.teal keyword.control.end.teal


    for x, y in a, b do end
--  ^^^ keyword.control.loop.teal
--      ^ variable.other.teal
--       ^ punctuation.separator.comma.teal
--         ^ variable.other.teal
--           ^^ keyword.control.loop.teal
    local x = 1
--  ^^^^^ storage.modifier.teal
--        ^ variable.other.teal
--          ^ keyword.operator.assignment.teal
--            ^ meta.number.integer.decimal.teal constant.numeric.value.teal

    goto foo
--  ^^^^ keyword.control.goto.teal

    break
--  ^^^^^ keyword.control.break.teal
