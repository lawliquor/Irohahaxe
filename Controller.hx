package;

@:keep
class UserController implements IController {
	private final createUseCase:IUseCase;

	public function new(createUseCase:IUseCase) {
		this.createUseCase = createUseCase;
	}

	public function createUser(name:String):Void {
		var inputData = new InputData(name);
		createUseCase.handle(inputData);
	}
}
