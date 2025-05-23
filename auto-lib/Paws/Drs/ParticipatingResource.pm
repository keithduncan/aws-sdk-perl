# Generated by default/object.tt
package Paws::Drs::ParticipatingResource;
  use Moose;
  has LaunchStatus => (is => 'ro', isa => 'Str', request_name => 'launchStatus', traits => ['NameInRequest']);
  has ParticipatingResourceID => (is => 'ro', isa => 'Paws::Drs::ParticipatingResourceID', request_name => 'participatingResourceID', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::ParticipatingResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Drs::ParticipatingResource object:

  $service_obj->Method(Att1 => { LaunchStatus => $value, ..., ParticipatingResourceID => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Drs::ParticipatingResource object:

  $result = $service_obj->Method(...);
  $result->Att1->LaunchStatus

=head1 DESCRIPTION

Represents a resource participating in an asynchronous Job.

=head1 ATTRIBUTES


=head2 LaunchStatus => Str

The launch status of a participating resource.


=head2 ParticipatingResourceID => L<Paws::Drs::ParticipatingResourceID>

The ID of a participating resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

