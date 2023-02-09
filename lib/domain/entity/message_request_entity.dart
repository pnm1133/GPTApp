
class MessageParam {
  String? model;
  String? prompt;
  int? maxTokens;
  int? temperature;
  int? topP;
  int? n;
  bool? stream;
  dynamic logprobs;
  String? stop;

  MessageParam({this.model, this.prompt, this.maxTokens, this.temperature, this.topP, this.n, this.stream, this.logprobs, this.stop});

  MessageParam.fromJson(Map<String, dynamic> json) {
    if(json["model"] is String) {
      model = json["model"];
    }
    if(json["prompt"] is String) {
      prompt = json["prompt"];
    }
    if(json["max_tokens"] is int) {
      maxTokens = json["max_tokens"];
    }
    if(json["temperature"] is int) {
      temperature = json["temperature"];
    }
    if(json["top_p"] is int) {
      topP = json["top_p"];
    }
    if(json["n"] is int) {
      n = json["n"];
    }
    if(json["stream"] is bool) {
      stream = json["stream"];
    }
    logprobs = json["logprobs"];
    if(json["stop"] is String) {
      stop = json["stop"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["model"] = model;
    _data["prompt"] = prompt;
    _data["max_tokens"] = maxTokens;
    _data["temperature"] = temperature;
    _data["top_p"] = topP;
    _data["n"] = n;
    _data["stream"] = stream;
    _data["logprobs"] = logprobs;
    _data["stop"] = stop;
    return _data;
  }
}