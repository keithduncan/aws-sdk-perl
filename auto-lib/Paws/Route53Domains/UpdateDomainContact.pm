
package Paws::Route53Domains::UpdateDomainContact;
  use Moose;
  has AdminContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail');
  has BillingContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail');
  has Consent => (is => 'ro', isa => 'Paws::Route53Domains::Consent');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has RegistrantContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail');
  has TechContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDomainContact');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::UpdateDomainContactResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::UpdateDomainContact - Arguments for method UpdateDomainContact on L<Paws::Route53Domains>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDomainContact on the
L<Amazon Route 53 Domains|Paws::Route53Domains> service. Use the attributes of this class
as arguments to method UpdateDomainContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDomainContact.

=head1 SYNOPSIS

    my $route53domains = Paws->service('Route53Domains');
    my $UpdateDomainContactResponse = $route53domains->UpdateDomainContact(
      DomainName   => 'MyDomainName',
      AdminContact => {
        AddressLine1 => 'MyAddressLine',    # max: 255; OPTIONAL
        AddressLine2 => 'MyAddressLine',    # max: 255; OPTIONAL
        City         => 'MyCity',           # max: 255; OPTIONAL
        ContactType  => 'PERSON'
        , # values: PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER; OPTIONAL
        CountryCode => 'AC'
        , # values: AC, AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AX, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BQ, BR, BS, BT, BV, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CW, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, EH, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GF, GG, GH, GI, GL, GM, GN, GP, GQ, GR, GS, GT, GU, GW, GY, HK, HM, HN, HR, HT, HU, ID, IE, IL, IM, IN, IO, IQ, IR, IS, IT, JE, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MQ, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NF, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PS, PT, PW, PY, QA, RE, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SJ, SK, SL, SM, SN, SO, SR, SS, ST, SV, SX, SY, SZ, TC, TD, TF, TG, TH, TJ, TK, TL, TM, TN, TO, TP, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW; OPTIONAL
        Email       => 'MyEmail',    # max: 254; OPTIONAL
        ExtraParams => [
          {
            Name => 'DUNS_NUMBER'
            , # values: DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, CA_LEGAL_REPRESENTATIVE, CA_LEGAL_REPRESENTATIVE_CAPACITY, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_NATIONALITY, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER, EU_COUNTRY_OF_CITIZENSHIP, AU_PRIORITY_TOKEN
            Value => 'MyExtraParamValue',    # max: 2048

          },
          ...
        ],    # OPTIONAL
        Fax              => 'MyContactNumber',    # max: 30; OPTIONAL
        FirstName        => 'MyContactName',      # max: 255; OPTIONAL
        LastName         => 'MyContactName',      # max: 255; OPTIONAL
        OrganizationName => 'MyContactName',      # max: 255; OPTIONAL
        PhoneNumber      => 'MyContactNumber',    # max: 30; OPTIONAL
        State            => 'MyState',            # max: 255; OPTIONAL
        ZipCode          => 'MyZipCode',          # max: 255; OPTIONAL
      },    # OPTIONAL
      BillingContact => {
        AddressLine1 => 'MyAddressLine',    # max: 255; OPTIONAL
        AddressLine2 => 'MyAddressLine',    # max: 255; OPTIONAL
        City         => 'MyCity',           # max: 255; OPTIONAL
        ContactType  => 'PERSON'
        , # values: PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER; OPTIONAL
        CountryCode => 'AC'
        , # values: AC, AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AX, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BQ, BR, BS, BT, BV, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CW, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, EH, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GF, GG, GH, GI, GL, GM, GN, GP, GQ, GR, GS, GT, GU, GW, GY, HK, HM, HN, HR, HT, HU, ID, IE, IL, IM, IN, IO, IQ, IR, IS, IT, JE, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MQ, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NF, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PS, PT, PW, PY, QA, RE, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SJ, SK, SL, SM, SN, SO, SR, SS, ST, SV, SX, SY, SZ, TC, TD, TF, TG, TH, TJ, TK, TL, TM, TN, TO, TP, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW; OPTIONAL
        Email       => 'MyEmail',    # max: 254; OPTIONAL
        ExtraParams => [
          {
            Name => 'DUNS_NUMBER'
            , # values: DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, CA_LEGAL_REPRESENTATIVE, CA_LEGAL_REPRESENTATIVE_CAPACITY, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_NATIONALITY, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER, EU_COUNTRY_OF_CITIZENSHIP, AU_PRIORITY_TOKEN
            Value => 'MyExtraParamValue',    # max: 2048

          },
          ...
        ],    # OPTIONAL
        Fax              => 'MyContactNumber',    # max: 30; OPTIONAL
        FirstName        => 'MyContactName',      # max: 255; OPTIONAL
        LastName         => 'MyContactName',      # max: 255; OPTIONAL
        OrganizationName => 'MyContactName',      # max: 255; OPTIONAL
        PhoneNumber      => 'MyContactNumber',    # max: 30; OPTIONAL
        State            => 'MyState',            # max: 255; OPTIONAL
        ZipCode          => 'MyZipCode',          # max: 255; OPTIONAL
      },    # OPTIONAL
      Consent => {
        Currency => 'MyCurrency',    # min: 3, max: 3
        MaxPrice => 1,

      },    # OPTIONAL
      RegistrantContact => {
        AddressLine1 => 'MyAddressLine',    # max: 255; OPTIONAL
        AddressLine2 => 'MyAddressLine',    # max: 255; OPTIONAL
        City         => 'MyCity',           # max: 255; OPTIONAL
        ContactType  => 'PERSON'
        , # values: PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER; OPTIONAL
        CountryCode => 'AC'
        , # values: AC, AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AX, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BQ, BR, BS, BT, BV, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CW, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, EH, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GF, GG, GH, GI, GL, GM, GN, GP, GQ, GR, GS, GT, GU, GW, GY, HK, HM, HN, HR, HT, HU, ID, IE, IL, IM, IN, IO, IQ, IR, IS, IT, JE, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MQ, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NF, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PS, PT, PW, PY, QA, RE, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SJ, SK, SL, SM, SN, SO, SR, SS, ST, SV, SX, SY, SZ, TC, TD, TF, TG, TH, TJ, TK, TL, TM, TN, TO, TP, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW; OPTIONAL
        Email       => 'MyEmail',    # max: 254; OPTIONAL
        ExtraParams => [
          {
            Name => 'DUNS_NUMBER'
            , # values: DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, CA_LEGAL_REPRESENTATIVE, CA_LEGAL_REPRESENTATIVE_CAPACITY, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_NATIONALITY, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER, EU_COUNTRY_OF_CITIZENSHIP, AU_PRIORITY_TOKEN
            Value => 'MyExtraParamValue',    # max: 2048

          },
          ...
        ],    # OPTIONAL
        Fax              => 'MyContactNumber',    # max: 30; OPTIONAL
        FirstName        => 'MyContactName',      # max: 255; OPTIONAL
        LastName         => 'MyContactName',      # max: 255; OPTIONAL
        OrganizationName => 'MyContactName',      # max: 255; OPTIONAL
        PhoneNumber      => 'MyContactNumber',    # max: 30; OPTIONAL
        State            => 'MyState',            # max: 255; OPTIONAL
        ZipCode          => 'MyZipCode',          # max: 255; OPTIONAL
      },    # OPTIONAL
      TechContact => {
        AddressLine1 => 'MyAddressLine',    # max: 255; OPTIONAL
        AddressLine2 => 'MyAddressLine',    # max: 255; OPTIONAL
        City         => 'MyCity',           # max: 255; OPTIONAL
        ContactType  => 'PERSON'
        , # values: PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER; OPTIONAL
        CountryCode => 'AC'
        , # values: AC, AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AX, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BQ, BR, BS, BT, BV, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CW, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, EH, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GF, GG, GH, GI, GL, GM, GN, GP, GQ, GR, GS, GT, GU, GW, GY, HK, HM, HN, HR, HT, HU, ID, IE, IL, IM, IN, IO, IQ, IR, IS, IT, JE, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MQ, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NF, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PS, PT, PW, PY, QA, RE, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SJ, SK, SL, SM, SN, SO, SR, SS, ST, SV, SX, SY, SZ, TC, TD, TF, TG, TH, TJ, TK, TL, TM, TN, TO, TP, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW; OPTIONAL
        Email       => 'MyEmail',    # max: 254; OPTIONAL
        ExtraParams => [
          {
            Name => 'DUNS_NUMBER'
            , # values: DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, CA_LEGAL_REPRESENTATIVE, CA_LEGAL_REPRESENTATIVE_CAPACITY, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_NATIONALITY, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER, EU_COUNTRY_OF_CITIZENSHIP, AU_PRIORITY_TOKEN
            Value => 'MyExtraParamValue',    # max: 2048

          },
          ...
        ],    # OPTIONAL
        Fax              => 'MyContactNumber',    # max: 30; OPTIONAL
        FirstName        => 'MyContactName',      # max: 255; OPTIONAL
        LastName         => 'MyContactName',      # max: 255; OPTIONAL
        OrganizationName => 'MyContactName',      # max: 255; OPTIONAL
        PhoneNumber      => 'MyContactNumber',    # max: 30; OPTIONAL
        State            => 'MyState',            # max: 255; OPTIONAL
        ZipCode          => 'MyZipCode',          # max: 255; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $OperationId = $UpdateDomainContactResponse->OperationId;

    # Returns a L<Paws::Route53Domains::UpdateDomainContactResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53domains/UpdateDomainContact>

=head1 ATTRIBUTES


=head2 AdminContact => L<Paws::Route53Domains::ContactDetail>

Provides detailed contact information.



=head2 BillingContact => L<Paws::Route53Domains::ContactDetail>

Provides detailed contact information.



=head2 Consent => L<Paws::Route53Domains::Consent>

Customer's consent for the owner change request. Required if the domain
is not free (consent price is more than $0.00).



=head2 B<REQUIRED> DomainName => Str

The name of the domain that you want to update contact information for.



=head2 RegistrantContact => L<Paws::Route53Domains::ContactDetail>

Provides detailed contact information.



=head2 TechContact => L<Paws::Route53Domains::ContactDetail>

Provides detailed contact information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDomainContact in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

