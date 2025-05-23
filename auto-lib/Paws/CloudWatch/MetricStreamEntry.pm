# Generated by default/object.tt
package Paws::CloudWatch::MetricStreamEntry;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has FirehoseArn => (is => 'ro', isa => 'Str');
  has LastUpdateDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OutputFormat => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::MetricStreamEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatch::MetricStreamEntry object:

  $service_obj->Method(Att1 => { Arn => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatch::MetricStreamEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

This structure contains the configuration information about one metric
stream.

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the metric stream.


=head2 CreationDate => Str

The date that the metric stream was originally created.


=head2 FirehoseArn => Str

The ARN of the Kinesis Firehose devlivery stream that is used for this
metric stream.


=head2 LastUpdateDate => Str

The date that the configuration of this metric stream was most recently
updated.


=head2 Name => Str

The name of the metric stream.


=head2 OutputFormat => Str

The output format of this metric stream. Valid values are C<json>,
C<opentelemetry1.0>, and C<opentelemetry0.7>.


=head2 State => Str

The current state of this stream. Valid values are C<running> and
C<stopped>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

