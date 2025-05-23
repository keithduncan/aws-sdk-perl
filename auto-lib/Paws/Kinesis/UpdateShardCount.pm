
package Paws::Kinesis::UpdateShardCount;
  use Moose;
  has ScalingType => (is => 'ro', isa => 'Str', required => 1);
  has StreamARN => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str');
  has TargetShardCount => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateShardCount');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kinesis::UpdateShardCountOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::UpdateShardCount - Arguments for method UpdateShardCount on L<Paws::Kinesis>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateShardCount on the
L<Amazon Kinesis|Paws::Kinesis> service. Use the attributes of this class
as arguments to method UpdateShardCount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateShardCount.

=head1 SYNOPSIS

    my $kinesis = Paws->service('Kinesis');
    my $UpdateShardCountOutput = $kinesis->UpdateShardCount(
      ScalingType      => 'UNIFORM_SCALING',
      TargetShardCount => 1,
      StreamARN        => 'MyStreamARN',       # OPTIONAL
      StreamName       => 'MyStreamName',      # OPTIONAL
    );

    # Results:
    my $CurrentShardCount = $UpdateShardCountOutput->CurrentShardCount;
    my $StreamARN         = $UpdateShardCountOutput->StreamARN;
    my $StreamName        = $UpdateShardCountOutput->StreamName;
    my $TargetShardCount  = $UpdateShardCountOutput->TargetShardCount;

    # Returns a L<Paws::Kinesis::UpdateShardCountOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesis/UpdateShardCount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScalingType => Str

The scaling type. Uniform scaling creates shards of equal size.

Valid values are: C<"UNIFORM_SCALING">

=head2 StreamARN => Str

The ARN of the stream.



=head2 StreamName => Str

The name of the stream.



=head2 B<REQUIRED> TargetShardCount => Int

The new number of shards. This value has the following default limits.
By default, you cannot do the following:

=over

=item *

Set this value to more than double your current shard count for a
stream.

=item *

Set this value below half your current shard count for a stream.

=item *

Set this value to more than 10000 shards in a stream (the default limit
for shard count per stream is 10000 per account per region), unless you
request a limit increase.

=item *

Scale a stream with more than 10000 shards down unless you set this
value to less than 10000 shards.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateShardCount in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

