# Generated by default/object.tt
package Paws::SecurityHub::CloudWatchLogsLogGroupArnConfigDetails;
  use Moose;
  has CloudWatchLogsLogGroupArn => (is => 'ro', isa => 'Str');
  has HostedZoneId => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::CloudWatchLogsLogGroupArnConfigDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::CloudWatchLogsLogGroupArnConfigDetails object:

  $service_obj->Method(Att1 => { CloudWatchLogsLogGroupArn => $value, ..., Id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::CloudWatchLogsLogGroupArnConfigDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchLogsLogGroupArn

=head1 DESCRIPTION

The Amazon Resource Name (ARN) and other details of the Amazon
CloudWatch Logs log group that Amazon Route 53 is publishing logs to.

=head1 ATTRIBUTES


=head2 CloudWatchLogsLogGroupArn => Str

The ARN of the CloudWatch Logs log group that Route 53 is publishing
logs to.


=head2 HostedZoneId => Str

The ID of the hosted zone that CloudWatch Logs is logging queries for.


=head2 Id => Str

The ID for a DNS query logging configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

