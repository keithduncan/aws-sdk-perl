package Paws::EC2::IpRange;
  use Moose;
  has CidrIp => (is => 'ro', isa => 'Str', request_name => 'cidrIp', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::IpRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::IpRange object:

  $service_obj->Method(Att1 => { CidrIp => $value, ..., Description => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::IpRange object:

  $result = $service_obj->Method(...);
  $result->Att1->CidrIp

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CidrIp => Str

The IPv4 address range. You can either specify a CIDR block or a source
security group, not both. To specify a single IPv4 address, use the /32
prefix length.

Amazon Web Services canonicalizes
(https://en.wikipedia.org/wiki/Canonicalization) IPv4 and IPv6 CIDRs.
For example, if you specify 100.68.0.18/18 for the CIDR block, Amazon
Web Services canonicalizes the CIDR block to 100.68.0.0/18. Any
subsequent DescribeSecurityGroups and DescribeSecurityGroupRules calls
will return the canonicalized form of the CIDR block. Additionally, if
you attempt to add another rule with the non-canonical form of the CIDR
(such as 100.68.0.18/18) and there is already a rule for the
canonicalized form of the CIDR block (such as 100.68.0.0/18), the API
throws an duplicate rule error.


=head2 Description => Str

A description for the security group rule that references this IPv4
address range.

Constraints: Up to 255 characters in length. Allowed characters are
a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=&;{}!$*



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
