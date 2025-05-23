# Generated by default/object.tt
package Paws::SimSpaceWeaver::LogDestination;
  use Moose;
  has CloudWatchLogsLogGroup => (is => 'ro', isa => 'Paws::SimSpaceWeaver::CloudWatchLogsLogGroup');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SimSpaceWeaver::LogDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimSpaceWeaver::LogDestination object:

  $service_obj->Method(Att1 => { CloudWatchLogsLogGroup => $value, ..., CloudWatchLogsLogGroup => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimSpaceWeaver::LogDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchLogsLogGroup

=head1 DESCRIPTION

The location where SimSpace Weaver sends simulation log data.

=head1 ATTRIBUTES


=head2 CloudWatchLogsLogGroup => L<Paws::SimSpaceWeaver::CloudWatchLogsLogGroup>

An Amazon CloudWatch Logs log group that stores simulation log data.
For more information about log groups, see Working with log groups and
log streams
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html)
in the I<Amazon CloudWatch Logs User Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimSpaceWeaver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

