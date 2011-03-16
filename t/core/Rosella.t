INIT {
    pir::load_bytecode("rosella/core.pbc");
    pir::load_bytecode("rosella/test.pbc");
}

Rosella::Test::test(RosellaTest);

class My::Test::Class {
    method sum($a, $b) { return $a + $b; }
    method value() { return -3; }
}

class My::Test::With::BUILD {
    has $!value;
    method BUILD($num) { $!value := $num + 5; }
    method value() { $!value // -1; } #/
}

class My::Test::With::Constructor {
    has $!value;
    method Constructor($num) { $!value := $num + 7; }
    method value() { $!value // -2; } #/
}

class RosellaTest is Rosella::Test::Testcase {
    method test_build() {
        my $item := Rosella::build(My::Test::Class);
        Assert::instance_of($item, My::Test::Class);
    }

    method test_build_BUILD_args() {
        my $item := Rosella::build(My::Test::With::BUILD, 3);
        Assert::equal($item.value, 8);
    }

    method test_build_without_BUILD() {
        my $item := Rosella::build(My::Test::With::Constructor, 3);
        Assert::equal($item.value, -2);
    }

    method test_construct_args() {
        my $item := Rosella::construct(My::Test::With::Constructor, 4);
        Assert::equal($item.value, 11);
    }

    method test_construct_without_constructor() {
        my $item := Rosella::construct(My::Test::Class, 5);
        Assert::equal($item.value, -3);
    }

    method test_get_type_name() {
    }

    method test_get_type_class() {
    }
}