# Generated by default/object.tt
package Paws::Rekognition::DatasetDescription;
  use Moose;
  has CreationTimestamp => (is => 'ro', isa => 'Str');
  has DatasetStats => (is => 'ro', isa => 'Paws::Rekognition::DatasetStats');
  has LastUpdatedTimestamp => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has StatusMessageCode => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DatasetDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::DatasetDescription object:

  $service_obj->Method(Att1 => { CreationTimestamp => $value, ..., StatusMessageCode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::DatasetDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTimestamp

=head1 DESCRIPTION

A description for a dataset. For more information, see DescribeDataset.

The status fields C<Status>, C<StatusMessage>, and C<StatusMessageCode>
reflect the last operation on the dataset.

=head1 ATTRIBUTES


=head2 CreationTimestamp => Str

The Unix timestamp for the time and date that the dataset was created.


=head2 DatasetStats => L<Paws::Rekognition::DatasetStats>

The status message code for the dataset.


=head2 LastUpdatedTimestamp => Str

The Unix timestamp for the date and time that the dataset was last
updated.


=head2 Status => Str

The status of the dataset.


=head2 StatusMessage => Str

The status message for the dataset.


=head2 StatusMessageCode => Str

The status message code for the dataset operation. If a service error
occurs, try the API call again later. If a client error occurs, check
the input parameters to the dataset API call that failed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

