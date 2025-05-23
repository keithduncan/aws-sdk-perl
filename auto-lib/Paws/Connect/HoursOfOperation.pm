# Generated by default/object.tt
package Paws::Connect::HoursOfOperation;
  use Moose;
  has Config => (is => 'ro', isa => 'ArrayRef[Paws::Connect::HoursOfOperationConfig]');
  has Description => (is => 'ro', isa => 'Str');
  has HoursOfOperationArn => (is => 'ro', isa => 'Str');
  has HoursOfOperationId => (is => 'ro', isa => 'Str');
  has LastModifiedRegion => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Connect::TagMap');
  has TimeZone => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::HoursOfOperation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::HoursOfOperation object:

  $service_obj->Method(Att1 => { Config => $value, ..., TimeZone => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::HoursOfOperation object:

  $result = $service_obj->Method(...);
  $result->Att1->Config

=head1 DESCRIPTION

Information about of the hours of operation.

=head1 ATTRIBUTES


=head2 Config => ArrayRef[L<Paws::Connect::HoursOfOperationConfig>]

Configuration information for the hours of operation.


=head2 Description => Str

The description for the hours of operation.


=head2 HoursOfOperationArn => Str

The Amazon Resource Name (ARN) for the hours of operation.


=head2 HoursOfOperationId => Str

The identifier for the hours of operation.


=head2 LastModifiedRegion => Str

The Amazon Web Services Region where this resource was last modified.


=head2 LastModifiedTime => Str

The timestamp when this resource was last modified.


=head2 Name => Str

The name for the hours of operation.


=head2 Tags => L<Paws::Connect::TagMap>

The tags used to organize, track, or control access for this resource.
For example, { "Tags": {"key1":"value1", "key2":"value2"} }.


=head2 TimeZone => Str

The time zone for the hours of operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

