INIT {
    pir::load_bytecode("rosella/xunit.pbc");
    pir::load_bytecode("rosella/action.pbc");
}

Rosella::Testcase::test(ActionTest);

class ActionTest is Rosella::Testcase {
    method test_BUILD() {
        my $action := Rosella::build(Rosella::Action, "foo", []);
        Assert::instance_of($action, Rosella::Action, "Is not an Action");
    }

    method test_prepare_args_empty() {
        self.todo("Oh noes!");
        my $action := Rosella::build(Rosella::Action, "foo", []);
        my @pos := [];
        my %named := {};
        $action.prepare_args(@pos, %named);
    }
}
