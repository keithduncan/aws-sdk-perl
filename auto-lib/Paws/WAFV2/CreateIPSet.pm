
package Paws::WAFV2::CreateIPSet;
  use Moose;
  has Addresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has IPAddressVersion => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Scope => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::WAFV2::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIPSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFV2::CreateIPSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::CreateIPSet - Arguments for method CreateIPSet on L<Paws::WAFV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIPSet on the
L<AWS WAFV2|Paws::WAFV2> service. Use the attributes of this class
as arguments to method CreateIPSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIPSet.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFV2');
    my $CreateIPSetResponse = $wafv2->CreateIPSet(
      Addresses => [
        'MyIPAddress', ...    # min: 1, max: 50
      ],
      IPAddressVersion => 'IPV4',
      Name             => 'MyEntityName',
      Scope            => 'CLOUDFRONT',
      Description      => 'MyEntityDescription',    # OPTIONAL
      Tags             => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Summary = $CreateIPSetResponse->Summary;

    # Returns a L<Paws::WAFV2::CreateIPSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/CreateIPSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Addresses => ArrayRef[Str|Undef]

Contains an array of strings that specifies zero or more IP addresses
or blocks of IP addresses that you want WAF to inspect for in incoming
requests. All addresses must be specified using Classless Inter-Domain
Routing (CIDR) notation. WAF supports all IPv4 and IPv6 CIDR ranges
except for C</0>.

Example address strings:

=over

=item *

For requests that originated from the IP address 192.0.2.44, specify
C<192.0.2.44/32>.

=item *

For requests that originated from IP addresses from 192.0.2.0 to
192.0.2.255, specify C<192.0.2.0/24>.

=item *

For requests that originated from the IP address
1111:0000:0000:0000:0000:0000:0000:0111, specify
C<1111:0000:0000:0000:0000:0000:0000:0111/128>.

=item *

For requests that originated from IP addresses
1111:0000:0000:0000:0000:0000:0000:0000 to
1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify
C<1111:0000:0000:0000:0000:0000:0000:0000/64>.

=back

For more information about CIDR notation, see the Wikipedia entry
Classless Inter-Domain Routing
(https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).

Example JSON C<Addresses> specifications:

=over

=item *

Empty array: C<"Addresses": []>

=item *

Array with one address: C<"Addresses": ["192.0.2.44/32"]>

=item *

Array with three addresses: C<"Addresses": ["192.0.2.44/32",
"192.0.2.0/24", "192.0.0.0/16"]>

=item *

INVALID specification: C<"Addresses": [""]> INVALID

=back




=head2 Description => Str

A description of the IP set that helps with identification.



=head2 B<REQUIRED> IPAddressVersion => Str

The version of the IP addresses, either C<IPV4> or C<IPV6>.

Valid values are: C<"IPV4">, C<"IPV6">

=head2 B<REQUIRED> Name => Str

The name of the IP set. You cannot change the name of an C<IPSet> after
you create it.



=head2 B<REQUIRED> Scope => Str

Specifies whether this is for a global resource type, such as a Amazon
CloudFront distribution. For an Amplify application, use C<CLOUDFRONT>.

To work with CloudFront, you must also specify the Region US East (N.
Virginia) as follows:

=over

=item *

CLI - Specify the Region when you use the CloudFront scope:
C<--scope=CLOUDFRONT --region=us-east-1>.

=item *

API and SDKs - For all calls, use the Region endpoint us-east-1.

=back


Valid values are: C<"CLOUDFRONT">, C<"REGIONAL">

=head2 Tags => ArrayRef[L<Paws::WAFV2::Tag>]

An array of key:value pairs to associate with the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIPSet in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

