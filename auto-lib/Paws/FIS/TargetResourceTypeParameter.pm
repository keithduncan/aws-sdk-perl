# Generated by default/object.tt
package Paws::FIS::TargetResourceTypeParameter;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Required => (is => 'ro', isa => 'Bool', request_name => 'required', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::TargetResourceTypeParameter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FIS::TargetResourceTypeParameter object:

  $service_obj->Method(Att1 => { Description => $value, ..., Required => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FIS::TargetResourceTypeParameter object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Describes the parameters for a resource type. Use parameters to
determine which tasks are identified during target resolution.

=head1 ATTRIBUTES


=head2 Description => Str

A description of the parameter.


=head2 Required => Bool

Indicates whether the parameter is required.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FIS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

