# Generated by default/object.tt
package Paws::Connect::AgentStatus;
  use Moose;
  has AgentStatusARN => (is => 'ro', isa => 'Str');
  has AgentStatusId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DisplayOrder => (is => 'ro', isa => 'Int');
  has LastModifiedRegion => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Connect::TagMap');
  has Type => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::AgentStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::AgentStatus object:

  $service_obj->Method(Att1 => { AgentStatusARN => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::AgentStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->AgentStatusARN

=head1 DESCRIPTION

Contains information about an agent status.

=head1 ATTRIBUTES


=head2 AgentStatusARN => Str

The Amazon Resource Name (ARN) of the agent status.


=head2 AgentStatusId => Str

The identifier of the agent status.


=head2 Description => Str

The description of the agent status.


=head2 DisplayOrder => Int

The display order of the agent status.


=head2 LastModifiedRegion => Str

The Amazon Web Services Region where this resource was last modified.


=head2 LastModifiedTime => Str

The timestamp when this resource was last modified.


=head2 Name => Str

The name of the agent status.


=head2 State => Str

The state of the agent status.


=head2 Tags => L<Paws::Connect::TagMap>

The tags used to organize, track, or control access for this resource.
For example, { "Tags": {"key1":"value1", "key2":"value2"} }.


=head2 Type => Str

The type of agent status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

