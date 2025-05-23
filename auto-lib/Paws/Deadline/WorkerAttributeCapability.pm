# Generated by default/object.tt
package Paws::Deadline::WorkerAttributeCapability;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'values', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::WorkerAttributeCapability

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Deadline::WorkerAttributeCapability object:

  $service_obj->Method(Att1 => { Name => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Deadline::WorkerAttributeCapability object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

The details of the worker attribute capability.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the worker attribute capability.


=head2 B<REQUIRED> Values => ArrayRef[Str|Undef]

The values of the worker amount capability.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

