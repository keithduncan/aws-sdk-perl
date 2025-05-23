# Generated by default/object.tt
package Paws::WorkMail::DnsRecord;
  use Moose;
  has Hostname => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DnsRecord

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkMail::DnsRecord object:

  $service_obj->Method(Att1 => { Hostname => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkMail::DnsRecord object:

  $result = $service_obj->Method(...);
  $result->Att1->Hostname

=head1 DESCRIPTION

A DNS record uploaded to your DNS provider.

=head1 ATTRIBUTES


=head2 Hostname => Str

The DNS hostname.- For example, C<domain.example.com>.


=head2 Type => Str

The RFC 1035 record type. Possible values: C<CNAME>, C<A>, C<MX>.


=head2 Value => Str

The value returned by the DNS for a query to that hostname and record
type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

