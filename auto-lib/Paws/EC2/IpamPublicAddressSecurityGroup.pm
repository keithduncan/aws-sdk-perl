package Paws::EC2::IpamPublicAddressSecurityGroup;
  use Moose;
  has GroupId => (is => 'ro', isa => 'Str', request_name => 'groupId', traits => ['NameInRequest']);
  has GroupName => (is => 'ro', isa => 'Str', request_name => 'groupName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::IpamPublicAddressSecurityGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::IpamPublicAddressSecurityGroup object:

  $service_obj->Method(Att1 => { GroupId => $value, ..., GroupName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::IpamPublicAddressSecurityGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->GroupId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 GroupId => Str

The security group's ID.


=head2 GroupName => Str

The security group's name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
