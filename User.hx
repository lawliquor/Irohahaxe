class User {
	public var name(default, null):String;
	public var id(default, null):String;

	public function new(name:String, ?id:String) {
		if (id == null) {
			this.id = Std.string(Math.round(1000 * Math.random()));
		}
		this.name = name;
	}
}
