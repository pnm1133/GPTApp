class Message {
  String? id;
  String? object;
  int? created;
  String? model;
  List<Choices>? choices;
  Usage? usage;

  Message({this.id, this.object, this.created, this.model, this.choices, this.usage});

  Message.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["object"] is String) {
      object = json["object"];
    }
    if(json["created"] is int) {
      created = json["created"];
    }
    if(json["model"] is String) {
      model = json["model"];
    }
    if(json["choices"] is List) {
      choices = json["choices"] == null ? null : (json["choices"] as List).map((e) => Choices.fromJson(e)).toList();
    }
    if(json["usage"] is Map) {
      usage = json["usage"] == null ? null : Usage.fromJson(json["usage"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["object"] = object;
    _data["created"] = created;
    _data["model"] = model;
    if(choices != null) {
      _data["choices"] = choices?.map((e) => e.toJson()).toList();
    }
    if(usage != null) {
      _data["usage"] = usage?.toJson();
    }
    return _data;
  }
}

class Usage {
  int? promptTokens;
  int? completionTokens;
  int? totalTokens;

  Usage({this.promptTokens, this.completionTokens, this.totalTokens});

  Usage.fromJson(Map<String, dynamic> json) {
    if(json["prompt_tokens"] is int) {
      promptTokens = json["prompt_tokens"];
    }
    if(json["completion_tokens"] is int) {
      completionTokens = json["completion_tokens"];
    }
    if(json["total_tokens"] is int) {
      totalTokens = json["total_tokens"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["prompt_tokens"] = promptTokens;
    _data["completion_tokens"] = completionTokens;
    _data["total_tokens"] = totalTokens;
    return _data;
  }
}

class Choices {
  String? text;
  int? index;
  dynamic logprobs;
  String? finishReason;

  Choices({this.text, this.index, this.logprobs, this.finishReason});

  Choices.fromJson(Map<String, dynamic> json) {
    if(json["text"] is String) {
      text = json["text"];
    }
    if(json["index"] is int) {
      index = json["index"];
    }
    logprobs = json["logprobs"];
    if(json["finish_reason"] is String) {
      finishReason = json["finish_reason"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["text"] = text;
    _data["index"] = index;
    _data["logprobs"] = logprobs;
    _data["finish_reason"] = finishReason;
    return _data;
  }
}