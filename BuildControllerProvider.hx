package;

@:keep
class BuildControllerProvider {
	public var controller(default, null):Dynamic;

	var repository:Dynamic;
	var presenter:Dynamic;
	var usecase:Dynamic;

	public function new(repository:String, presenter:String, usecase:String, controller:String) {
		this.repository = getClassInstance(repository, []);
		this.presenter = getClassInstance(presenter, []);
		this.usecase = getClassInstance(usecase, [this.repository, this.presenter]);
		this.controller = getClassInstance(controller, [this.usecase]);
	}

	function getClassInstance(className:String, ?args:Array<Dynamic>):Dynamic {
		return Type.createInstance(Type.resolveClass(className), args);
	}
}
