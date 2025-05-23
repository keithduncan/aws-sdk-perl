# Generated by default/object.tt
package Paws::RedshiftServerless::CreateSnapshotScheduleActionParameters;
  use Moose;
  has NamespaceName => (is => 'ro', isa => 'Str', request_name => 'namespaceName', traits => ['NameInRequest'], required => 1);
  has RetentionPeriod => (is => 'ro', isa => 'Int', request_name => 'retentionPeriod', traits => ['NameInRequest']);
  has SnapshotNamePrefix => (is => 'ro', isa => 'Str', request_name => 'snapshotNamePrefix', traits => ['NameInRequest'], required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RedshiftServerless::Tag]', request_name => 'tags', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::CreateSnapshotScheduleActionParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedshiftServerless::CreateSnapshotScheduleActionParameters object:

  $service_obj->Method(Att1 => { NamespaceName => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedshiftServerless::CreateSnapshotScheduleActionParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->NamespaceName

=head1 DESCRIPTION

The parameters that you can use to configure a scheduled action
(https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_CreateScheduledAction.html)
to create a snapshot. For more information about creating a scheduled
action, see CreateScheduledAction
(https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_CreateScheduledAction.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> NamespaceName => Str

The name of the namespace for which you want to configure a scheduled
action to create a snapshot.


=head2 RetentionPeriod => Int

The retention period of the snapshot created by the scheduled action.


=head2 B<REQUIRED> SnapshotNamePrefix => Str

A string prefix that is attached to the name of the snapshot created by
the scheduled action. The final name of the snapshot is the string
prefix appended by the date and time of when the snapshot was created.


=head2 Tags => ArrayRef[L<Paws::RedshiftServerless::Tag>]

An array of Tag objects
(https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_Tag.html)
to associate with the snapshot.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

