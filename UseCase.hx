package;

@:keep
class UserCreateInteractor implements IUseCase {
	private final repository:IRepository;
	private final presenter:IPresenter;

	public function new(repository:IRepository, presenter:IPresenter) {
		this.repository = repository;
		this.presenter = presenter;
	}

	public function handle(inputData:InputData):Void {
		var name = inputData.name;
		var duplicateUser = repository.findByName(name);
		if (duplicateUser == true) {
			throw new Exception("duplicated");
		}

		var user = new User(name);
		repository.save(user);

		var outputData = new OutputData(user.id, Date.now());
		presenter.complete(outputData);
	}
}

class InputData {
	public var name(default, null):String;

	public function new(name:String) {
		this.name = name;
	}
}

class OutputData {
	public var id(default, null):String;
	public var created(default, null):Date;

	public function new(id:String, created:Date) {
		this.id = id;
		this.created = created;
	}
}
