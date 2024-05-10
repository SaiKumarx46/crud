using MyService as service from '../../srv/service';

annotate service.bank with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'bankid',
            Value : bankid,
        },
        {
            $Type : 'UI.DataField',
            Label : 'bankname',
            Value : bankname,
        },
    ]
);
annotate service.bank with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'bankid',
                Value : bankid,
            },
            {
                $Type : 'UI.DataField',
                Label : 'bankname',
                Value : bankname,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
