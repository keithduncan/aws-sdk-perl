
package Paws::Route53Domains::TransferDomain;
  use Moose;
  has AdminContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail', required => 1);
  has AuthCode => (is => 'ro', isa => 'Str');
  has AutoRenew => (is => 'ro', isa => 'Bool');
  has BillingContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has DurationInYears => (is => 'ro', isa => 'Int', required => 1);
  has IdnLangCode => (is => 'ro', isa => 'Str');
  has Nameservers => (is => 'ro', isa => 'ArrayRef[Paws::Route53Domains::Nameserver]');
  has PrivacyProtectAdminContact => (is => 'ro', isa => 'Bool');
  has PrivacyProtectBillingContact => (is => 'ro', isa => 'Bool');
  has PrivacyProtectRegistrantContact => (is => 'ro', isa => 'Bool');
  has PrivacyProtectTechContact => (is => 'ro', isa => 'Bool');
  has RegistrantContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail', required => 1);
  has TechContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TransferDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::TransferDomainResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::TransferDomain - Arguments for method TransferDomain on L<Paws::Route53Domains>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TransferDomain on the
L<Amazon Route 53 Domains|Paws::Route53Domains> service. Use the attributes of this class
as arguments to method TransferDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TransferDomain.

=head1 SYNOPSIS

    my $route53domains = Paws->service('Route53Domains');
    my $TransferDomainResponse = $route53domains->TransferDomain(
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
      },
      DomainName        => 'MyDomainName',
      DurationInYears   => 1,
      RegistrantContact => {
        AddressLine1 => 'MyAddressLine',          # max: 255; OPTIONAL
        AddressLine2 => 'MyAddressLine',          # max: 255; OPTIONAL
        City         => 'MyCity',                 # max: 255; OPTIONAL
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
      },
      TechContact => {
        AddressLine1 => 'MyAddressLine',          # max: 255; OPTIONAL
        AddressLine2 => 'MyAddressLine',          # max: 255; OPTIONAL
        City         => 'MyCity',                 # max: 255; OPTIONAL
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
      },
      AuthCode       => 'MyDomainAuthCode',       # OPTIONAL
      AutoRenew      => 1,                        # OPTIONAL
      BillingContact => {
        AddressLine1 => 'MyAddressLine',          # max: 255; OPTIONAL
        AddressLine2 => 'MyAddressLine',          # max: 255; OPTIONAL
        City         => 'MyCity',                 # max: 255; OPTIONAL
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
      IdnLangCode => 'MyLangCode',    # OPTIONAL
      Nameservers => [
        {
          Name    => 'MyHostName',    # max: 255
          GlueIps => [
            'MyGlueIp', ...           # max: 45
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      PrivacyProtectAdminContact      => 1,    # OPTIONAL
      PrivacyProtectBillingContact    => 1,    # OPTIONAL
      PrivacyProtectRegistrantContact => 1,    # OPTIONAL
      PrivacyProtectTechContact       => 1,    # OPTIONAL
    );

    # Results:
    my $OperationId = $TransferDomainResponse->OperationId;

    # Returns a L<Paws::Route53Domains::TransferDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53domains/TransferDomain>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AdminContact => L<Paws::Route53Domains::ContactDetail>

Provides detailed contact information.



=head2 AuthCode => Str

The authorization code for the domain. You get this value from the
current registrar.



=head2 AutoRenew => Bool

Indicates whether the domain will be automatically renewed (true) or
not (false). Auto renewal only takes effect after the account is
charged.

Default: true



=head2 BillingContact => L<Paws::Route53Domains::ContactDetail>

Provides detailed contact information.



=head2 B<REQUIRED> DomainName => Str

The name of the domain that you want to transfer to Route 53. The
top-level domain (TLD), such as .com, must be a TLD that Route 53
supports. For a list of supported TLDs, see Domains that You Can
Register with Amazon Route 53
(https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html)
in the I<Amazon Route 53 Developer Guide>.

The domain name can contain only the following characters:

=over

=item *

Letters a through z. Domain names are not case sensitive.

=item *

Numbers 0 through 9.

=item *

Hyphen (-). You can't specify a hyphen at the beginning or end of a
label.

=item *

Period (.) to separate the labels in the name, such as the C<.> in
C<example.com>.

=back




=head2 B<REQUIRED> DurationInYears => Int

The number of years that you want to register the domain for. Domains
are registered for a minimum of one year. The maximum period depends on
the top-level domain.

Default: 1



=head2 IdnLangCode => Str

Reserved for future use.



=head2 Nameservers => ArrayRef[L<Paws::Route53Domains::Nameserver>]

Contains details for the host and glue IP addresses.



=head2 PrivacyProtectAdminContact => Bool

Whether you want to conceal contact information from WHOIS queries. If
you specify C<true>, WHOIS ("who is") queries return contact
information for the registrar, the phrase "REDACTED FOR PRIVACY", or
"On behalf of E<lt>domain nameE<gt> owner.".

While some domains may allow different privacy settings per contact, we
recommend specifying the same privacy setting for all contacts.

Default: C<true>



=head2 PrivacyProtectBillingContact => Bool

Whether you want to conceal contact information from WHOIS queries. If
you specify C<true>, WHOIS ("who is") queries return contact
information either for Amazon Registrar or for our registrar associate,
Gandi. If you specify C<false>, WHOIS queries return the information
that you entered for the billing contact.

You must specify the same privacy setting for the administrative,
billing, registrant, and technical contacts.



=head2 PrivacyProtectRegistrantContact => Bool

Whether you want to conceal contact information from WHOIS queries. If
you specify C<true>, WHOIS ("who is") queries return contact
information either for Amazon Registrar or for our registrar associate,
Gandi. If you specify C<false>, WHOIS queries return the information
that you entered for the registrant contact (domain owner).

You must specify the same privacy setting for the administrative,
billing, registrant, and technical contacts.

Default: C<true>



=head2 PrivacyProtectTechContact => Bool

Whether you want to conceal contact information from WHOIS queries. If
you specify C<true>, WHOIS ("who is") queries return contact
information either for Amazon Registrar or for our registrar associate,
Gandi. If you specify C<false>, WHOIS queries return the information
that you entered for the technical contact.

You must specify the same privacy setting for the administrative,
billing, registrant, and technical contacts.

Default: C<true>



=head2 B<REQUIRED> RegistrantContact => L<Paws::Route53Domains::ContactDetail>

Provides detailed contact information.



=head2 B<REQUIRED> TechContact => L<Paws::Route53Domains::ContactDetail>

Provides detailed contact information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TransferDomain in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

