function create_new(var p_args [slurpy], var n_args [slurpy,named])
{
    return new Rosella.Event.Dispatcher.Immediate(p_args:[flat], n_args:[flat,named]);
}

class Test_Rosella_Event_Dispatcher_Immediate
{
    function test_new()
    {
        // Test simple constructor. For most individual method tests, use create_new() above
        var obj = new Rosella.Event.Dispatcher.Immediate();
        self.assert.not_null(obj);
        self.assert.instance_of(obj, class Rosella.Event.Dispatcher.Immediate);
    }

    function dispatch()
    {
        self.status.verify("Test Rosella.Event.Dispatcher.Immediate.dispatch()");
        var obj = create_new();

        var arg_0 = [];
        var arg_1 = function(e) { self.assert.same(e, arg_0); };
        obj.dispatch(arg_0, arg_1);
    }
}

function main[main]()
{
    var core = load_packfile("rosella/core.pbc");
    var(Rosella.initialize_rosella)("test");
    var(Rosella.load_bytecode_file)("rosella/event.pbc", "load");
    var(Rosella.Test.test)(class Test_Rosella_Event_Dispatcher_Immediate);
}
