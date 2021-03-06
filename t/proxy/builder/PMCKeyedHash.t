INIT {
    my $rosella := pir::load_bytecode__PS("rosella/core.pbc");
    Rosella::initialize_rosella("test", "proxy");
}

class FooController is Rosella::Proxy::Controller {
    method get_keyed($proxy, $val_type, $key_type, $key)
    {
        return 7;
    }

    method set_keyed($proxy, $val_type, $key_type, $key, $value)
    {
        $value($key);
    }

    method op_keyed($proxy, $op_type, $key_type, $key)
    {
        return 0;
    }
}

class My::Foo {
    method bar($arg) { return "real $arg"; }
}

Rosella::Test::test(Proxy::Builder::PMCKeyedHash::Test);
class Proxy::Builder::PMCKeyedHash::Test {
    method test_get_keyed_intercept() {
        my $factory := Rosella::construct(Rosella::Proxy::Factory, My::Foo, [
            Rosella::construct(Rosella::Proxy::Builder::PMCKeyedHash)
        ]);

        my $p := $factory.create(FooController.new());
        my $result := $p[1];
        $!assert.equal($result, 7);
    }

    method test_set_keyed_intercept() {
        my $factory := Rosella::construct(Rosella::Proxy::Factory, My::Foo, [
            Rosella::construct(Rosella::Proxy::Builder::PMCKeyedHash)
        ]);

        my $p := $factory.create(FooController.new());
        my $value := 0;
        $p[1] := sub($i) { $value := pir::set__IP($i); };
        $!assert.equal($value, 1);
    }

    method test_delete_keyed_intercept() {
        my $factory := Rosella::construct(Rosella::Proxy::Factory, My::Foo, [
            Rosella::construct(Rosella::Proxy::Builder::PMCKeyedHash)
        ]);

        my $p := $factory.create(FooController.new());
        $!status.unimplemented("test_delete_keyed_intercept");
    }

    method test_defined_keyed_intercept() {
        my $factory := Rosella::construct(Rosella::Proxy::Factory, My::Foo, [
            Rosella::construct(Rosella::Proxy::Builder::PMCKeyedHash)
        ]);

        my $p := $factory.create(FooController.new());
        $!status.unimplemented("test_defined_keyed_intercept");
    }

    method test_exists_keyed_intercept() {
        my $factory := Rosella::construct(Rosella::Proxy::Factory, My::Foo, [
            Rosella::construct(Rosella::Proxy::Builder::PMCKeyedHash)
        ]);

        my $p := $factory.create(FooController.new());
        $!status.unimplemented("test_exists_keyed_intercept");
    }
}
