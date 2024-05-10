using crud as s1 from '../db/schema';

service MyService {

    @odata.draft.enabled
    entity bank as projection on s1.bank;
    entity customer as projection on s1.customer;
    entity account as projection on s1.account;

}