# Generated by default/object.tt
package Paws::DirectConnect::Location;
  use Moose;
  has AvailableMacSecPortSpeeds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'availableMacSecPortSpeeds', traits => ['NameInRequest']);
  has AvailablePortSpeeds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'availablePortSpeeds', traits => ['NameInRequest']);
  has AvailableProviders => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'availableProviders', traits => ['NameInRequest']);
  has LocationCode => (is => 'ro', isa => 'Str', request_name => 'locationCode', traits => ['NameInRequest']);
  has LocationName => (is => 'ro', isa => 'Str', request_name => 'locationName', traits => ['NameInRequest']);
  has Region => (is => 'ro', isa => 'Str', request_name => 'region', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::Location

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DirectConnect::Location object:

  $service_obj->Method(Att1 => { AvailableMacSecPortSpeeds => $value, ..., Region => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DirectConnect::Location object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailableMacSecPortSpeeds

=head1 DESCRIPTION

Information about an Direct Connect location.

=head1 ATTRIBUTES


=head2 AvailableMacSecPortSpeeds => ArrayRef[Str|Undef]

The available MAC Security (MACsec) port speeds for the location.


=head2 AvailablePortSpeeds => ArrayRef[Str|Undef]

The available port speeds for the location.


=head2 AvailableProviders => ArrayRef[Str|Undef]

The name of the service provider for the location.


=head2 LocationCode => Str

The code for the location.


=head2 LocationName => Str

The name of the location. This includes the name of the colocation
partner and the physical site of the building.


=head2 Region => Str

The Amazon Web Services Region for the location.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

