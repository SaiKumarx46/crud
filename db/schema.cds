namespace crud;
entity bank{
    key bankid:String;
    bankname:String;
    banktocust : Composition of customer on banktocust.bankid = bankid;

}

entity customer{
    key cid:String;
    bankid:String;
    custname:String;
    custtobank: Association to one bank on custtobank.bankid = bankid;
    custtoacc:  Association to many account on custtoacc.cid = cid;

}

entity account{
    key Accid:String;
    cid:String;
    bankid:String;
    acctype:String;
    balance:Integer;
    acctocust:Association to many account on acctocust.cid = cid;

}