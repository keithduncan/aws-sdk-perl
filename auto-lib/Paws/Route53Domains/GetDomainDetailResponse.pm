
package Paws::Route53Domains::GetDomainDetailResponse;
  use Moose;
  has AbuseContactEmail => (is => 'ro', isa => 'Str');
  has AbuseContactPhone => (is => 'ro', isa => 'Str');
  has AdminContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail');
  has AdminPrivacy => (is => 'ro', isa => 'Bool');
  has AutoRenew => (is => 'ro', isa => 'Bool');
  has BillingContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail');
  has BillingPrivacy => (is => 'ro', isa => 'Bool');
  has CreationDate => (is => 'ro', isa => 'Str');
  has DnsSec => (is => 'ro', isa => 'Str');
  has DnssecKeys => (is => 'ro', isa => 'ArrayRef[Paws::Route53Domains::DnssecKey]');
  has DomainName => (is => 'ro', isa => 'Str');
  has ExpirationDate => (is => 'ro', isa => 'Str');
  has Nameservers => (is => 'ro', isa => 'ArrayRef[Paws::Route53Domains::Nameserver]');
  has RegistrantContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail');
  has RegistrantPrivacy => (is => 'ro', isa => 'Bool');
  has RegistrarName => (is => 'ro', isa => 'Str');
  has RegistrarUrl => (is => 'ro', isa => 'Str');
  has RegistryDomainId => (is => 'ro', isa => 'Str');
  has Reseller => (is => 'ro', isa => 'Str');
  has StatusList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TechContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail');
  has TechPrivacy => (is => 'ro', isa => 'Bool');
  has UpdatedDate => (is => 'ro', isa => 'Str');
  has WhoIsServer => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::GetDomainDetailResponse

=head1 ATTRIBUTES


=head2 AbuseContactEmail => Str

Email address to contact to report incorrect contact information for a
domain, to report that the domain is being used to send spam, to report
that someone is cybersquatting on a domain name, or report some other
type of abuse.


=head2 AbuseContactPhone => Str

Phone number for reporting abuse.


=head2 AdminContact => L<Paws::Route53Domains::ContactDetail>

Provides details about the domain administrative contact.


=head2 AdminPrivacy => Bool

Specifies whether contact information is concealed from WHOIS queries.
If the value is C<true>, WHOIS ("who is") queries return contact
information either for Amazon Registrar or for our registrar associate,
Gandi. If the value is C<false>, WHOIS queries return the information
that you entered for the admin contact.


=head2 AutoRenew => Bool

Specifies whether the domain registration is set to renew
automatically.


=head2 BillingContact => L<Paws::Route53Domains::ContactDetail>

Provides details about the domain billing contact.


=head2 BillingPrivacy => Bool

Specifies whether contact information is concealed from WHOIS queries.
If the value is C<true>, WHOIS ("who is") queries return contact
information either for Amazon Registrar or for our registrar associate,
Gandi. If the value is C<false>, WHOIS queries return the information
that you entered for the billing contact.


=head2 CreationDate => Str

The date when the domain was created as found in the response to a
WHOIS query. The date and time is in Unix time format and Coordinated
Universal time (UTC).


=head2 DnsSec => Str

Deprecated.


=head2 DnssecKeys => ArrayRef[L<Paws::Route53Domains::DnssecKey>]

A complex type that contains information about the DNSSEC
configuration.


=head2 DomainName => Str

The name of a domain.


=head2 ExpirationDate => Str

The date when the registration for the domain is set to expire. The
date and time is in Unix time format and Coordinated Universal time
(UTC).


=head2 Nameservers => ArrayRef[L<Paws::Route53Domains::Nameserver>]

The name servers of the domain.


=head2 RegistrantContact => L<Paws::Route53Domains::ContactDetail>

Provides details about the domain registrant.


=head2 RegistrantPrivacy => Bool

Specifies whether contact information is concealed from WHOIS queries.
If the value is C<true>, WHOIS ("who is") queries return contact
information either for Amazon Registrar or for our registrar associate,
Gandi. If the value is C<false>, WHOIS queries return the information
that you entered for the registrant contact (domain owner).


=head2 RegistrarName => Str

Name of the registrar of the domain as identified in the registry.


=head2 RegistrarUrl => Str

Web address of the registrar.


=head2 RegistryDomainId => Str

Reserved for future use.


=head2 Reseller => Str

Reseller of the domain. Domains registered or transferred using Route
53 domains will have C<"Amazon"> as the reseller.


=head2 StatusList => ArrayRef[Str|Undef]

An array of domain name status codes, also known as Extensible
Provisioning Protocol (EPP) status codes.

ICANN, the organization that maintains a central database of domain
names, has developed a set of domain name status codes that tell you
the status of a variety of operations on a domain name, for example,
registering a domain name, transferring a domain name to another
registrar, renewing the registration for a domain name, and so on. All
registrars use this same set of status codes.

For a current list of domain name status codes and an explanation of
what each code means, go to the ICANN website (https://www.icann.org/)
and search for C<epp status codes>. (Search on the ICANN website; web
searches sometimes return an old version of the document.)


=head2 TechContact => L<Paws::Route53Domains::ContactDetail>

Provides details about the domain technical contact.


=head2 TechPrivacy => Bool

Specifies whether contact information is concealed from WHOIS queries.
If the value is C<true>, WHOIS ("who is") queries return contact
information either for Amazon Registrar or for our registrar associate,
Gandi. If the value is C<false>, WHOIS queries return the information
that you entered for the technical contact.


=head2 UpdatedDate => Str

The last updated date of the domain as found in the response to a WHOIS
query. The date and time is in Unix time format and Coordinated
Universal time (UTC).


=head2 WhoIsServer => Str

The fully qualified name of the WHOIS server that can answer the WHOIS
query for the domain.


=head2 _request_id => Str


=cut

1;