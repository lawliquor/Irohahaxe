package;

interface IController {
	private final createUseCase:IUseCase;
}

interface IPresenter {
	public function complete(outputData:OutputData):Void;
}

interface IRepository {
	public function findByName(name:String):Bool;
	public function save(user:User):Void;
}

interface IUseCase {
	public function handle(inputDate:InputData):Void;
}
