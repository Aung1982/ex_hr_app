class GetString {
  //AID,
  String _eID;
  String _eName;

  double _t1;
  double _t2;
  double _t3;
  double _t4;
  double _t5;
  double _t6;

  double _pT1;
  double _pT2;
  double _pT3;
  double _pT4;
  double _pT5;
  double _pT6;

  String _saveDate;
  String _saveTime;

  // String _getStr;

  GetString(
      this._eID,
      this._eName,
      this._t1,
      this._t2,
      this._t3,
      this._t4,
      this._t5,
      this._t6,
      this._pT1,
      this._pT2,
      this._pT3,
      this._pT4,
      this._pT5,
      this._pT6,
      this._saveDate,
      this._saveTime);
  GetString.WithId(
      this._eID,
      this._eName,
      this._t1,
      this._t2,
      this._t3,
      this._t4,
      this._t5,
      this._t6,
      this._pT1,
      this._pT2,
      this._pT3,
      this._pT4,
      this._pT5,
      this._pT6,
      this._saveDate,
      this._saveTime);

  String get eID => _eID;
  String get eName => _eName;

  double get t1 => _t1;
  double get t2 => _t2;
  double get t3 => _t3;
  double get t4 => _t4;
  double get t5 => _t5;
  double get t6 => _t6;

  double get pT1 => _pT1;
  double get pT2 => _pT2;
  double get pT3 => _pT3;
  double get pT4 => _pT4;
  double get pT5 => _pT5;
  double get pT6 => _pT6;

  String get saveDate => _saveDate;
  String get saveTime => _saveTime;

  set eID(String neweID) {
    _eID = neweID;
  }

  set eName(String neweName) {
    _eName = neweName;
  }

  set t1(double newt1) {
    _t1 = newt1;
  }

  set t2(double newt2) {
    _t2 = newt2;
  }

  set t3(double newt3) {
    _t3 = newt3;
  }

  set t4(double newt4) {
    _t4 = newt4;
  }

  set t5(double newt5) {
    _t5 = newt5;
  }

  set t6(double newt6) {
    _t6 = newt6;
  }

  set pT1(double newpT1) {
    _pT1 = newpT1;
  }

  set pT2(double newpT2) {
    _pT2 = newpT2;
  }

  set pT3(double newpT3) {
    _pT3 = newpT3;
  }

  set pT4(double newpT4) {
    _pT4 = newpT4;
  }

  set pT5(double newpT5) {
    _pT5 = newpT5;
  }

  set pT6(double newpT6) {
    _pT6 = newpT6;
  }

  set saveDate(String newsaveDate) {
    _saveDate = newsaveDate;
  }

  set saveTime(String newsaveTime) {
    _saveTime = newsaveTime;
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    //AID,E_ID,E_Name,T_1,T_2,T_3,T_4,T_5,T_6,pT_1,pT_2,pT_3,pT_4,pT_5,pT_6,SaveDate,SaveTime
    map["E_ID"] = _eID;
    map["E_Name"] = eName;

    map["T_1"] = t1;
    map["T_2"] = t2;
    map["T_3"] = t3;
    map["T_4"] = t4;
    map["T_5"] = t5;
    map["T_6"] = t6;

    map["pT_1"] = pT1;
    map["pT_2"] = pT2;
    map["pT_3"] = pT3;
    map["pT_4"] = pT4;
    map["pT_5"] = pT5;
    map["pT_6"] = pT6;

    map["SaveDate"] = saveDate;
    map["SaveTime"] = saveTime;

    return map;
  }

  GetString.fromObject(dynamic o) {
    this.eID = o["e_ID"];
    this.eName = o["e_Name"];

    this.t1 = o["t_1"];
    this.t2 = o["t_2"];
    this.t3 = o["t_3"];
    this.t4 = o["t_4"];
    this.t5 = o["t_5"];
    this.t6 = o["t_6"];

    this.pT1 = o["pT_1"];
    this.pT2 = o["pT_2"];
    this.pT3 = o["pT_3"];
    this.pT4 = o["pT_4"];
    this.pT5 = o["pT_5"];
    this.pT6 = o["pT_6"];

    this.saveDate = o["saveDate"];
    this.saveTime = o["saveTime"];
  }
}
