# Generated by default/object.tt
package Paws::SupplyChain::DataLakeDatasetPartitionField;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Transform => (is => 'ro', isa => 'Paws::SupplyChain::DataLakeDatasetPartitionFieldTransform', request_name => 'transform', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::DataLakeDatasetPartitionField

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SupplyChain::DataLakeDatasetPartitionField object:

  $service_obj->Method(Att1 => { Name => $value, ..., Transform => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SupplyChain::DataLakeDatasetPartitionField object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

The detail of the partition field.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the partition field.


=head2 B<REQUIRED> Transform => L<Paws::SupplyChain::DataLakeDatasetPartitionFieldTransform>

The transformation of the partition field. A transformation specifies
how to partition on a given field. For example, with timestamp you can
specify that you'd like to partition fields by day, e.g. data record
with value 2025-01-03T00:00:00Z in partition field is in 2025-01-03
partition. Also noted that data record without any value in optional
partition field is in NULL partition.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SupplyChain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

