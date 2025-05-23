# Generated by default/object.tt
package Paws::SecurityHub::AwsRedshiftClusterDeferredMaintenanceWindow;
  use Moose;
  has DeferMaintenanceEndTime => (is => 'ro', isa => 'Str');
  has DeferMaintenanceIdentifier => (is => 'ro', isa => 'Str');
  has DeferMaintenanceStartTime => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsRedshiftClusterDeferredMaintenanceWindow

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsRedshiftClusterDeferredMaintenanceWindow object:

  $service_obj->Method(Att1 => { DeferMaintenanceEndTime => $value, ..., DeferMaintenanceStartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsRedshiftClusterDeferredMaintenanceWindow object:

  $result = $service_obj->Method(...);
  $result->Att1->DeferMaintenanceEndTime

=head1 DESCRIPTION

A time windows during which maintenance was deferred for an Amazon
Redshift cluster.

=head1 ATTRIBUTES


=head2 DeferMaintenanceEndTime => Str

The end of the time window for which maintenance was deferred.

For more information about the validation and formatting of timestamp
fields in Security Hub, see Timestamps
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/Welcome.html#timestamps).


=head2 DeferMaintenanceIdentifier => Str

The identifier of the maintenance window.


=head2 DeferMaintenanceStartTime => Str

The start of the time window for which maintenance was deferred.

For more information about the validation and formatting of timestamp
fields in Security Hub, see Timestamps
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/Welcome.html#timestamps).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

