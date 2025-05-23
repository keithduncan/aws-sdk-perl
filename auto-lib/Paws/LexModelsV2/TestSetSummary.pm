# Generated by default/object.tt
package Paws::LexModelsV2::TestSetSummary;
  use Moose;
  has CreationDateTime => (is => 'ro', isa => 'Str', request_name => 'creationDateTime', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedDateTime', traits => ['NameInRequest']);
  has Modality => (is => 'ro', isa => 'Str', request_name => 'modality', traits => ['NameInRequest']);
  has NumTurns => (is => 'ro', isa => 'Int', request_name => 'numTurns', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StorageLocation => (is => 'ro', isa => 'Paws::LexModelsV2::TestSetStorageLocation', request_name => 'storageLocation', traits => ['NameInRequest']);
  has TestSetId => (is => 'ro', isa => 'Str', request_name => 'testSetId', traits => ['NameInRequest']);
  has TestSetName => (is => 'ro', isa => 'Str', request_name => 'testSetName', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::TestSetSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModelsV2::TestSetSummary object:

  $service_obj->Method(Att1 => { CreationDateTime => $value, ..., TestSetName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModelsV2::TestSetSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDateTime

=head1 DESCRIPTION

Contains summary information about the test set.

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

The date and time at which the test set was created.


=head2 Description => Str

The description of the test set.


=head2 LastUpdatedDateTime => Str

The date and time at which the test set was last updated.


=head2 Modality => Str

Specifies whether the test set contains written or spoken data.


=head2 NumTurns => Int

The number of turns in the test set.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that has permission to
access the test set.


=head2 Status => Str

The status of the test set.


=head2 StorageLocation => L<Paws::LexModelsV2::TestSetStorageLocation>

Contains information about the location at which the test set is
stored.


=head2 TestSetId => Str

The unique identifier of the test set.


=head2 TestSetName => Str

The name of the test set.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

