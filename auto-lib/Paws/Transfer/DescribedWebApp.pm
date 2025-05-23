# Generated by default/object.tt
package Paws::Transfer::DescribedWebApp;
  use Moose;
  has AccessEndpoint => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has DescribedIdentityProviderDetails => (is => 'ro', isa => 'Paws::Transfer::DescribedWebAppIdentityProviderDetails');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::Tag]');
  has WebAppEndpoint => (is => 'ro', isa => 'Str');
  has WebAppEndpointPolicy => (is => 'ro', isa => 'Str');
  has WebAppId => (is => 'ro', isa => 'Str', required => 1);
  has WebAppUnits => (is => 'ro', isa => 'Paws::Transfer::WebAppUnits');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DescribedWebApp

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transfer::DescribedWebApp object:

  $service_obj->Method(Att1 => { AccessEndpoint => $value, ..., WebAppUnits => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transfer::DescribedWebApp object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessEndpoint

=head1 DESCRIPTION

A structure that describes the parameters for the web app, as
identified by the C<WebAppId>.

=head1 ATTRIBUTES


=head2 AccessEndpoint => Str

The C<AccessEndpoint> is the URL that you provide to your users for
them to interact with the Transfer Family web app. You can specify a
custom URL or use the default value.


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the web app.


=head2 DescribedIdentityProviderDetails => L<Paws::Transfer::DescribedWebAppIdentityProviderDetails>

A structure that contains the details for the identity provider used by
the web app.


=head2 Tags => ArrayRef[L<Paws::Transfer::Tag>]

Key-value pairs that can be used to group and search for web apps. Tags
are metadata attached to web apps for any purpose.


=head2 WebAppEndpoint => Str

The C<WebAppEndpoint> is the unique URL for your Transfer Family web
app. This is the value that you use when you configure B<Origins> on
CloudFront.


=head2 WebAppEndpointPolicy => Str

Setting for the type of endpoint policy for the web app. The default
value is C<STANDARD>.

If your web app was created in an Amazon Web Services GovCloud (US)
Region, the value of this parameter can be C<FIPS>, which indicates the
web app endpoint is FIPS-compliant.


=head2 B<REQUIRED> WebAppId => Str

The unique identifier for the web app.


=head2 WebAppUnits => L<Paws::Transfer::WebAppUnits>

A union that contains the value for number of concurrent connections or
the user sessions on your web app.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

