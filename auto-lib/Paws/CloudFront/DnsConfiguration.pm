# Generated by default/object.tt
package Paws::CloudFront::DnsConfiguration;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', required => 1);
  has Reason => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::DnsConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::DnsConfiguration object:

  $service_obj->Method(Att1 => { Domain => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::DnsConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Domain

=head1 DESCRIPTION

The DNS configuration for your domain names.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The domain name that you're verifying.


=head2 Reason => Str

Explains the status of the DNS configuration.


=head2 B<REQUIRED> Status => Str

The status of your domain name.

=over

=item *

C<valid-configuration>: The domain name is correctly configured and
points to the correct routing endpoint of the connection group.

=item *

C<invalid-configuration>: There is either a missing DNS record or the
DNS record exists but it's using an incorrect routing endpoint. Update
the DNS record to point to the correct routing endpoint.

=item *

C<unknown-configuration>: CloudFront can't validate your DNS
configuration. This status can appear if CloudFront can't verify the
DNS record, or the DNS lookup request failed or timed out.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

