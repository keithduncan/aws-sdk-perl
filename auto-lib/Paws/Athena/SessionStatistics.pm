# Generated by default/object.tt
package Paws::Athena::SessionStatistics;
  use Moose;
  has DpuExecutionInMillis => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::SessionStatistics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Athena::SessionStatistics object:

  $service_obj->Method(Att1 => { DpuExecutionInMillis => $value, ..., DpuExecutionInMillis => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Athena::SessionStatistics object:

  $result = $service_obj->Method(...);
  $result->Att1->DpuExecutionInMillis

=head1 DESCRIPTION

Contains statistics for a session.

=head1 ATTRIBUTES


=head2 DpuExecutionInMillis => Int

The data processing unit execution time for a session in milliseconds.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

