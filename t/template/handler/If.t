class Test_Rosella_Template_Handler_If
{
    function test_new() {
        var obj = new Rosella.Template.Handler.If();
        self.assert.not_null(obj);
        self.assert.instance_of(obj, class Rosella.Template.Handler.If);
    }

   function add_child() {
        self.status.verify("Test Rosella.Template.Handler.If.add_child()");
        var obj = new Rosella.Template.Handler.If();

        var arg_0 = null;
        var result = obj.add_child(arg_0);
    }

    function render() {
        self.status.verify("Test Rosella.Template.Handler.If.render()");
        var obj = new Rosella.Template.Handler.If();

        var arg_0 = null;
        var arg_1 = null;
        var arg_2 = null;
        var result = obj.render(arg_0, arg_1, arg_2);
    }

    function __satisfied() {
        self.status.verify("Test Rosella.Template.Handler.If.__satisfied()");
        var obj = new Rosella.Template.Handler.If();

        var arg_0 = null;
        var result = obj.__satisfied(arg_0);
    }

    function __get_value() {
        self.status.verify("Test Rosella.Template.Handler.If.__get_value()");
        var obj = new Rosella.Template.Handler.If();

        var arg_0 = null;
        var arg_1 = null;
        var result = obj.__get_value(arg_0, arg_1);
    }
}

function main[main]()
{
    load_bytecode("rosella/test.pbc");
    load_bytecode("rosella/template.pbc");
    using Rosella.Test.test;
    test(class Test_Rosella_Template_Handler_If);
}