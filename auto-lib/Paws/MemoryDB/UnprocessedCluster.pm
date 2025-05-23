# Generated by default/object.tt
package Paws::MemoryDB::UnprocessedCluster;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has ErrorType => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::UnprocessedCluster

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MemoryDB::UnprocessedCluster object:

  $service_obj->Method(Att1 => { ClusterName => $value, ..., ErrorType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MemoryDB::UnprocessedCluster object:

  $result = $service_obj->Method(...);
  $result->Att1->ClusterName

=head1 DESCRIPTION

A cluster whose updates have failed

=head1 ATTRIBUTES


=head2 ClusterName => Str

The name of the cluster


=head2 ErrorMessage => Str

The error message associated with the update failure


=head2 ErrorType => Str

The error type associated with the update failure



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MemoryDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

