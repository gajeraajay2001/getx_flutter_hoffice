class LoginModel {
  String? sTATUS;
  String? sOURCE;
  String? pHPTOKEN;
  String? mSG;
  List<CONFIG>? cONFIG = [];
  int? lOGID;

  LoginModel(
      {this.sTATUS,
      this.sOURCE,
      this.pHPTOKEN,
      this.mSG,
      this.cONFIG,
      this.lOGID});

  LoginModel.fromJson(Map<String, dynamic> json) {
    sTATUS = json['STATUS'];
    sOURCE = json['SOURCE'];
    pHPTOKEN = json['PHPTOKEN'];
    mSG = json['MSG'];
    if (json['CONFIG'] != null) {
      json['CONFIG'].forEach((v) {
        cONFIG!.add(new CONFIG.fromJson(v));
      });
    }
    lOGID = json['LOG_ID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['STATUS'] = this.sTATUS;
    data['SOURCE'] = this.sOURCE;
    data['PHPTOKEN'] = this.pHPTOKEN;
    data['MSG'] = this.mSG;
    if (this.cONFIG != null) {
      data['CONFIG'] = this.cONFIG!.map((v) => v.toJson()).toList();
    }
    data['LOG_ID'] = this.lOGID;
    return data;
  }
}

class CONFIG {
  String? eNABLEDCONTACTASFOLLOWERINTASK;
  String? eNABLEDRAWCONTACTASFOLLOWERINTASK;
  String? cONSUMERLABEL;
  String? lEADMODULELABEL;
  String? pRODUCTREQUIRED;
  String? tASKSINGULARMODULELABEL;
  String? sUPPORTLABEL;
  String? sALESORDERLABEL;
  String? rAWCONTACTMOBILEREQUIREDINDIVIDUAL;

  CONFIG(
      {this.eNABLEDCONTACTASFOLLOWERINTASK,
      this.eNABLEDRAWCONTACTASFOLLOWERINTASK,
      this.cONSUMERLABEL,
      this.lEADMODULELABEL,
      this.pRODUCTREQUIRED,
      this.tASKSINGULARMODULELABEL,
      this.sUPPORTLABEL,
      this.sALESORDERLABEL,
      this.rAWCONTACTMOBILEREQUIREDINDIVIDUAL});

  CONFIG.fromJson(Map<String, dynamic> json) {
    eNABLEDCONTACTASFOLLOWERINTASK =
        json['ENABLED_CONTACT_AS_FOLLOWER_IN_TASK'];
    eNABLEDRAWCONTACTASFOLLOWERINTASK =
        json['ENABLED_RAWCONTACT_AS_FOLLOWER_IN_TASK'];
    cONSUMERLABEL = json['CONSUMER_LABEL'];
    lEADMODULELABEL = json['LEAD_MODULE_LABEL'];
    pRODUCTREQUIRED = json['PRODUCT_REQUIRED'];
    tASKSINGULARMODULELABEL = json['TASK_SINGULAR_MODULE_LABEL'];
    sUPPORTLABEL = json['SUPPORT_LABEL'];
    sALESORDERLABEL = json['SALESORDER_LABEL'];
    rAWCONTACTMOBILEREQUIREDINDIVIDUAL =
        json['RAWCONTACT_MOBILE_REQUIRED_INDIVIDUAL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ENABLED_CONTACT_AS_FOLLOWER_IN_TASK'] =
        this.eNABLEDCONTACTASFOLLOWERINTASK;
    data['ENABLED_RAWCONTACT_AS_FOLLOWER_IN_TASK'] =
        this.eNABLEDRAWCONTACTASFOLLOWERINTASK;
    data['CONSUMER_LABEL'] = this.cONSUMERLABEL;
    data['LEAD_MODULE_LABEL'] = this.lEADMODULELABEL;
    data['PRODUCT_REQUIRED'] = this.pRODUCTREQUIRED;
    data['TASK_SINGULAR_MODULE_LABEL'] = this.tASKSINGULARMODULELABEL;
    data['SUPPORT_LABEL'] = this.sUPPORTLABEL;
    data['SALESORDER_LABEL'] = this.sALESORDERLABEL;
    data['RAWCONTACT_MOBILE_REQUIRED_INDIVIDUAL'] =
        this.rAWCONTACTMOBILEREQUIREDINDIVIDUAL;
    return data;
  }
}
