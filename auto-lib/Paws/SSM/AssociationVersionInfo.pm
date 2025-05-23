# Generated by default/object.tt
package Paws::SSM::AssociationVersionInfo;
  use Moose;
  has ApplyOnlyAtCronInterval => (is => 'ro', isa => 'Bool');
  has AssociationId => (is => 'ro', isa => 'Str');
  has AssociationName => (is => 'ro', isa => 'Str');
  has AssociationVersion => (is => 'ro', isa => 'Str');
  has CalendarNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ComplianceSeverity => (is => 'ro', isa => 'Str');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Int');
  has MaxConcurrency => (is => 'ro', isa => 'Str');
  has MaxErrors => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OutputLocation => (is => 'ro', isa => 'Paws::SSM::InstanceAssociationOutputLocation');
  has Parameters => (is => 'ro', isa => 'Paws::SSM::Parameters');
  has ScheduleExpression => (is => 'ro', isa => 'Str');
  has ScheduleOffset => (is => 'ro', isa => 'Int');
  has SyncCompliance => (is => 'ro', isa => 'Str');
  has TargetLocations => (is => 'ro', isa => 'ArrayRef[Paws::SSM::TargetLocation]');
  has TargetMaps => (is => 'ro', isa => 'ArrayRef[Paws::SSM::TargetMap]');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::AssociationVersionInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::AssociationVersionInfo object:

  $service_obj->Method(Att1 => { ApplyOnlyAtCronInterval => $value, ..., Targets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::AssociationVersionInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplyOnlyAtCronInterval

=head1 DESCRIPTION

Information about the association version.

=head1 ATTRIBUTES


=head2 ApplyOnlyAtCronInterval => Bool

By default, when you create new associations, the system runs it
immediately after it is created and then according to the schedule you
specified. Specify this option if you don't want an association to run
immediately after you create it. This parameter isn't supported for
rate expressions.


=head2 AssociationId => Str

The ID created by the system when the association was created.


=head2 AssociationName => Str

The name specified for the association version when the association
version was created.


=head2 AssociationVersion => Str

The association version.


=head2 CalendarNames => ArrayRef[Str|Undef]

The names or Amazon Resource Names (ARNs) of the Change Calendar type
documents your associations are gated under. The associations for this
version only run when that Change Calendar is open. For more
information, see Amazon Web Services Systems Manager Change Calendar
(https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar)
in the I<Amazon Web Services Systems Manager User Guide>.


=head2 ComplianceSeverity => Str

The severity level that is assigned to the association.


=head2 CreatedDate => Str

The date the association version was created.


=head2 DocumentVersion => Str

The version of an Amazon Web Services Systems Manager document (SSM
document) used when the association version was created.


=head2 Duration => Int

The number of hours that an association can run on specified targets.
After the resulting cutoff time passes, associations that are currently
running are cancelled, and no pending executions are started on
remaining targets.


=head2 MaxConcurrency => Str

The maximum number of targets allowed to run the association at the
same time. You can specify a number, for example 10, or a percentage of
the target set, for example 10%. The default value is 100%, which means
all targets run the association at the same time.

If a new managed node starts and attempts to run an association while
Systems Manager is running C<MaxConcurrency> associations, the
association is allowed to run. During the next association interval,
the new managed node will process its association within the limit
specified for C<MaxConcurrency>.


=head2 MaxErrors => Str

The number of errors that are allowed before the system stops sending
requests to run the association on additional targets. You can specify
either an absolute number of errors, for example 10, or a percentage of
the target set, for example 10%. If you specify 3, for example, the
system stops sending requests when the fourth error is received. If you
specify 0, then the system stops sending requests after the first error
is returned. If you run an association on 50 managed nodes and set
C<MaxError> to 10%, then the system stops sending the request when the
sixth error is received.

Executions that are already running an association when C<MaxErrors> is
reached are allowed to complete, but some of these executions may fail
as well. If you need to ensure that there won't be more than max-errors
failed executions, set C<MaxConcurrency> to 1 so that executions
proceed one at a time.


=head2 Name => Str

The name specified when the association was created.


=head2 OutputLocation => L<Paws::SSM::InstanceAssociationOutputLocation>

The location in Amazon S3 specified for the association when the
association version was created.


=head2 Parameters => L<Paws::SSM::Parameters>

Parameters specified when the association version was created.


=head2 ScheduleExpression => Str

The cron or rate schedule specified for the association when the
association version was created.


=head2 ScheduleOffset => Int

Number of days to wait after the scheduled day to run an association.


=head2 SyncCompliance => Str

The mode for generating association compliance. You can specify C<AUTO>
or C<MANUAL>. In C<AUTO> mode, the system uses the status of the
association execution to determine the compliance status. If the
association execution runs successfully, then the association is
C<COMPLIANT>. If the association execution doesn't run successfully,
the association is C<NON-COMPLIANT>.

In C<MANUAL> mode, you must specify the C<AssociationId> as a parameter
for the PutComplianceItems API operation. In this case, compliance data
isn't managed by State Manager, a tool in Amazon Web Services Systems
Manager. It is managed by your direct call to the PutComplianceItems
API operation.

By default, all associations use C<AUTO> mode.


=head2 TargetLocations => ArrayRef[L<Paws::SSM::TargetLocation>]

The combination of Amazon Web Services Regions and Amazon Web Services
accounts where you wanted to run the association when this association
version was created.


=head2 TargetMaps => ArrayRef[L<Paws::SSM::TargetMap>]

A key-value mapping of document parameters to target resources. Both
Targets and TargetMaps can't be specified together.


=head2 Targets => ArrayRef[L<Paws::SSM::Target>]

The targets specified for the association when the association version
was created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

