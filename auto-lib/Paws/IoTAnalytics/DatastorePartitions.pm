# Generated by default/object.tt
package Paws::IoTAnalytics::DatastorePartitions;
  use Moose;
  has Partitions => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::DatastorePartition]', request_name => 'partitions', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DatastorePartitions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::DatastorePartitions object:

  $service_obj->Method(Att1 => { Partitions => $value, ..., Partitions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::DatastorePartitions object:

  $result = $service_obj->Method(...);
  $result->Att1->Partitions

=head1 DESCRIPTION

Contains information about the partition dimensions in a data store.

=head1 ATTRIBUTES


=head2 Partitions => ArrayRef[L<Paws::IoTAnalytics::DatastorePartition>]

A list of partition dimensions in a data store.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

