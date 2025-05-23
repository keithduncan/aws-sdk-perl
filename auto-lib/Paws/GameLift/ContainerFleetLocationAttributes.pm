# Generated by default/object.tt
package Paws::GameLift::ContainerFleetLocationAttributes;
  use Moose;
  has Location => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ContainerFleetLocationAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::ContainerFleetLocationAttributes object:

  $service_obj->Method(Att1 => { Location => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::ContainerFleetLocationAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Location

=head1 DESCRIPTION

Details about a location in a multi-location container fleet.

=head1 ATTRIBUTES


=head2 Location => Str

A location identifier.


=head2 Status => Str

The status of fleet activity in the location.

=over

=item *

C<PENDING> -- A new container fleet has been requested.

=item *

C<CREATING> -- A new container fleet resource is being created.

=item *

C<CREATED> -- A new container fleet resource has been created. No fleet
instances have been deployed.

=item *

C<ACTIVATING> -- New container fleet instances are being deployed.

=item *

C<ACTIVE> -- The container fleet has been deployed and is ready to host
game sessions.

=item *

C<UPDATING> -- Updates to the container fleet is being updated. A
deployment is in progress.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

