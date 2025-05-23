# Generated by default/object.tt
package Paws::ApplicationMigration::PostLaunchActionsStatus;
  use Moose;
  has PostLaunchActionsLaunchStatusList => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationMigration::JobPostLaunchActionsLaunchStatus]', request_name => 'postLaunchActionsLaunchStatusList', traits => ['NameInRequest']);
  has SsmAgentDiscoveryDatetime => (is => 'ro', isa => 'Str', request_name => 'ssmAgentDiscoveryDatetime', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::PostLaunchActionsStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationMigration::PostLaunchActionsStatus object:

  $service_obj->Method(Att1 => { PostLaunchActionsLaunchStatusList => $value, ..., SsmAgentDiscoveryDatetime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationMigration::PostLaunchActionsStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->PostLaunchActionsLaunchStatusList

=head1 DESCRIPTION

Status of the Post Launch Actions running on the Test or Cutover
instance.

=head1 ATTRIBUTES


=head2 PostLaunchActionsLaunchStatusList => ArrayRef[L<Paws::ApplicationMigration::JobPostLaunchActionsLaunchStatus>]

List of Post Launch Action status.


=head2 SsmAgentDiscoveryDatetime => Str

Time where the AWS Systems Manager was detected as running on the Test
or Cutover instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

