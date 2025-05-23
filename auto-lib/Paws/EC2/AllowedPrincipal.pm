package Paws::EC2::AllowedPrincipal;
  use Moose;
  has Principal => (is => 'ro', isa => 'Str', request_name => 'principal', traits => ['NameInRequest']);
  has PrincipalType => (is => 'ro', isa => 'Str', request_name => 'principalType', traits => ['NameInRequest']);
  has ServiceId => (is => 'ro', isa => 'Str', request_name => 'serviceId', traits => ['NameInRequest']);
  has ServicePermissionId => (is => 'ro', isa => 'Str', request_name => 'servicePermissionId', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AllowedPrincipal

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::AllowedPrincipal object:

  $service_obj->Method(Att1 => { Principal => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::AllowedPrincipal object:

  $result = $service_obj->Method(...);
  $result->Att1->Principal

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Principal => Str

The Amazon Resource Name (ARN) of the principal.


=head2 PrincipalType => Str

The type of principal.


=head2 ServiceId => Str

The ID of the service.


=head2 ServicePermissionId => Str

The ID of the service permission.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
