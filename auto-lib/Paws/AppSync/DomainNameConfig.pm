# Generated by default/object.tt
package Paws::AppSync::DomainNameConfig;
  use Moose;
  has AppsyncDomainName => (is => 'ro', isa => 'Str', request_name => 'appsyncDomainName', traits => ['NameInRequest']);
  has CertificateArn => (is => 'ro', isa => 'Str', request_name => 'certificateArn', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DomainName => (is => 'ro', isa => 'Str', request_name => 'domainName', traits => ['NameInRequest']);
  has DomainNameArn => (is => 'ro', isa => 'Str', request_name => 'domainNameArn', traits => ['NameInRequest']);
  has HostedZoneId => (is => 'ro', isa => 'Str', request_name => 'hostedZoneId', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::AppSync::TagMap', request_name => 'tags', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::DomainNameConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::DomainNameConfig object:

  $service_obj->Method(Att1 => { AppsyncDomainName => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::DomainNameConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AppsyncDomainName

=head1 DESCRIPTION

Describes a configuration for a custom domain.

=head1 ATTRIBUTES


=head2 AppsyncDomainName => Str

The domain name that AppSync provides.


=head2 CertificateArn => Str

The Amazon Resource Name (ARN) of the certificate. This can be an
Certificate Manager (ACM) certificate or an Identity and Access
Management (IAM) server certificate.


=head2 Description => Str

A description of the C<DomainName> configuration.


=head2 DomainName => Str

The domain name.


=head2 DomainNameArn => Str

The Amazon Resource Name (ARN) of the domain name.


=head2 HostedZoneId => Str

The ID of your Amazon Route 53 hosted zone.


=head2 Tags => L<Paws::AppSync::TagMap>





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

