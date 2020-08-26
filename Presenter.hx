package;

@:keep
class Presenter implements IPresenter {
	public function new() {}

	public function complete(outputData:OutputData):Void {
		var id = outputData.id;
		var createdDate = outputData.created;
		var createdDateText = DateTools.format(createdDate, "%F"); // 2016-07-08
		var model = new ViewModel(id, createdDateText);
		trace("id:" + model.id + " created:" + model.createdDate);
	}
}

class ViewModel {
	public var id(default, null):String;
	public var createdDate(default, null):String;

	public function new(id:String, createdDate:String) {
		this.id = id;
		this.createdDate = createdDate;
	}
}
