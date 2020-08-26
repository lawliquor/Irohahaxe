package;

@:keep
class Repository implements IRepository {
	public var data(default, null):Map<String, String> = new Map();

	public function new() {};

	public function findByName(name:String):Bool {
		for (key => value in data) {
			if (name == value) {
				return true;
			}
		}
		return false;
	}

	public function save(user:User):Void {
		data[user.id] = user.name;
		trace(data);
		trace(data[user.id]);
	}
}
