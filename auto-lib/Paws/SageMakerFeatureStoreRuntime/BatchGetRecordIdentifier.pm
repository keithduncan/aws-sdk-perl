# Generated by default/object.tt
package Paws::SageMakerFeatureStoreRuntime::BatchGetRecordIdentifier;
  use Moose;
  has FeatureGroupName => (is => 'ro', isa => 'Str', required => 1);
  has FeatureNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RecordIdentifiersValueAsString => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerFeatureStoreRuntime::BatchGetRecordIdentifier

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMakerFeatureStoreRuntime::BatchGetRecordIdentifier object:

  $service_obj->Method(Att1 => { FeatureGroupName => $value, ..., RecordIdentifiersValueAsString => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMakerFeatureStoreRuntime::BatchGetRecordIdentifier object:

  $result = $service_obj->Method(...);
  $result->Att1->FeatureGroupName

=head1 DESCRIPTION

The identifier that identifies the batch of Records you are retrieving
in a batch.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FeatureGroupName => Str

The name or Amazon Resource Name (ARN) of the C<FeatureGroup>
containing the records you are retrieving in a batch.


=head2 FeatureNames => ArrayRef[Str|Undef]

List of names of Features to be retrieved. If not specified, the latest
value for all the Features are returned.


=head2 B<REQUIRED> RecordIdentifiersValueAsString => ArrayRef[Str|Undef]

The value for a list of record identifiers in string format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMakerFeatureStoreRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

