
package Paws::Robomaker::CreateRobotApplicationVersionResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Environment => (is => 'ro', isa => 'Paws::Robomaker::Environment', traits => ['NameInRequest'], request_name => 'environment');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revisionId');
  has RobotSoftwareSuite => (is => 'ro', isa => 'Paws::Robomaker::RobotSoftwareSuite', traits => ['NameInRequest'], request_name => 'robotSoftwareSuite');
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::Source]', traits => ['NameInRequest'], request_name => 'sources');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::CreateRobotApplicationVersionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the robot application.


=head2 Environment => L<Paws::Robomaker::Environment>

The object that contains the Docker image URI used to create your robot
application.


=head2 LastUpdatedAt => Str

The time, in milliseconds since the epoch, when the robot application
was last updated.


=head2 Name => Str

The name of the robot application.


=head2 RevisionId => Str

The revision id of the robot application.


=head2 RobotSoftwareSuite => L<Paws::Robomaker::RobotSoftwareSuite>

The robot software suite used by the robot application.


=head2 Sources => ArrayRef[L<Paws::Robomaker::Source>]

The sources of the robot application.


=head2 Version => Str

The version of the robot application.


=head2 _request_id => Str


=cut

