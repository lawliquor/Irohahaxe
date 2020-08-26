package;

class Main {
	static function main() {
		var start = Date.now().getTime();
		var username = "user_one";

　　var provider = new BuildControllerProvider("Repository", "Presenter", "UserCreateInteractor", "UserController");
		provider.controller.createUser(username);

		var end = Date.now().getTime();
		var delta = end - start;
		trace(delta);
	}
}
