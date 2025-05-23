
package Paws::KinesisVideo::UpdateDataRetention;
  use Moose;
  has CurrentVersion => (is => 'ro', isa => 'Str', required => 1);
  has DataRetentionChangeInHours => (is => 'ro', isa => 'Int', required => 1);
  has Operation => (is => 'ro', isa => 'Str', required => 1);
  has StreamARN => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDataRetention');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/updateDataRetention');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideo::UpdateDataRetentionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::UpdateDataRetention - Arguments for method UpdateDataRetention on L<Paws::KinesisVideo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDataRetention on the
L<Amazon Kinesis Video Streams|Paws::KinesisVideo> service. Use the attributes of this class
as arguments to method UpdateDataRetention.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDataRetention.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideo');
    my $UpdateDataRetentionOutput = $kinesisvideo->UpdateDataRetention(
      CurrentVersion             => 'MyVersion',
      DataRetentionChangeInHours => 1,
      Operation                  => 'INCREASE_DATA_RETENTION',
      StreamARN                  => 'MyResourceARN',             # OPTIONAL
      StreamName                 => 'MyStreamName',              # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/UpdateDataRetention>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CurrentVersion => Str

The version of the stream whose retention period you want to change. To
get the version, call either the C<DescribeStream> or the
C<ListStreams> API.



=head2 B<REQUIRED> DataRetentionChangeInHours => Int

The number of hours to adjust the current retention by. The value you
specify is added to or subtracted from the current value, depending on
the C<operation>.

The minimum value for data retention is 0 and the maximum value is
87600 (ten years).



=head2 B<REQUIRED> Operation => Str

Indicates whether you want to increase or decrease the retention
period.

Valid values are: C<"INCREASE_DATA_RETENTION">, C<"DECREASE_DATA_RETENTION">

=head2 StreamARN => Str

The Amazon Resource Name (ARN) of the stream whose retention period you
want to change.



=head2 StreamName => Str

The name of the stream whose retention period you want to change.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDataRetention in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

