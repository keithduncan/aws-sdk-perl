# Generated by default/object.tt
package Paws::GameLiftStreams::StreamSessionSummary;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has ExportFilesMetadata => (is => 'ro', isa => 'Paws::GameLiftStreams::ExportFilesMetadata');
  has LastUpdatedAt => (is => 'ro', isa => 'Str');
  has Location => (is => 'ro', isa => 'Str');
  has Protocol => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UserId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::StreamSessionSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLiftStreams::StreamSessionSummary object:

  $service_obj->Method(Att1 => { ApplicationArn => $value, ..., UserId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLiftStreams::StreamSessionSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationArn

=head1 DESCRIPTION

Describes a Amazon GameLift Streams stream session. To retrieve
additional details for the stream session, call GetStreamSession
(https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamSession.html).

=head1 ATTRIBUTES


=head2 ApplicationArn => Str

An Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
or ID that uniquely identifies the application resource. Format
example:
ARN-C<arn:aws:gameliftstreams:us-west-2:123456789012:application/a-9ZY8X7Wv6>
or ID-C<a-9ZY8X7Wv6>.


=head2 Arn => Str

An Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
that uniquely identifies the stream session resource. Format example:
C<1AB2C3De4>. .


=head2 CreatedAt => Str

A timestamp that indicates when this resource was created. Timestamps
are expressed using in ISO8601 format, such as:
C<2022-12-27T22:29:40+00:00> (UTC).


=head2 ExportFilesMetadata => L<Paws::GameLiftStreams::ExportFilesMetadata>

Provides details about the stream session's exported files.


=head2 LastUpdatedAt => Str

A timestamp that indicates when this resource was last updated.
Timestamps are expressed using in ISO8601 format, such as:
C<2022-12-27T22:29:40+00:00> (UTC).


=head2 Location => Str

The location where Amazon GameLift Streams is hosting the stream
session.

A location's name. For example, C<us-east-1>. For a complete list of
locations that Amazon GameLift Streams supports, refer to Regions and
quotas
(https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/regions-quotas.html)
in the I<Amazon GameLift Streams Developer Guide>.


=head2 Protocol => Str

The data transfer protocol in use with the stream session.


=head2 Status => Str

The current status of the stream session resource. Possible statuses
include the following:

=over

=item *

C<ACTIVATING>: The stream session is starting and preparing to stream.

=item *

C<ACTIVE>: The stream session is ready to accept client connections.

=item *

C<CONNECTED>: The stream session has a connected client.

=item *

C<PENDING_CLIENT_RECONNECTION>: A client has recently disconnected, and
the stream session is waiting for the client to reconnect. After a
short time, if the client doesn't reconnect, the stream session status
transitions to C<TERMINATED>.

=item *

C<TERMINATING>: The stream session is ending.

=item *

C<TERMINATED>: The stream session has ended.

=item *

C<ERROR>: The stream session failed to activate.

=back



=head2 UserId => Str

An opaque, unique identifier for an end-user, defined by the developer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLiftStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

