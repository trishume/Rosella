INIT {
    pir::load_bytecode("rosella/test.pbc");
    pir::load_bytecode("rosella/action.pbc");
    pir::load_bytecode("rosella/container.pbc");
}

Rosella::Test::test(ActionArgContainerResolverTest);

class ActionArgContainerResolverTest {
    method test_BUILD() {
        my $c := Rosella::build(Rosella::Container);
        my $arg := Rosella::build(Rosella::Action::Argument::ContainerResolver, $c, "String");
        $!status.unimplemented("Test this");
    }
}