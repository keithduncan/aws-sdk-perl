# Generated by default/object.tt
package Paws::LexModelsV2::BotVersionReplicaSummary;
  use Moose;
  has BotVersion => (is => 'ro', isa => 'Str', request_name => 'botVersion', traits => ['NameInRequest']);
  has BotVersionReplicationStatus => (is => 'ro', isa => 'Str', request_name => 'botVersionReplicationStatus', traits => ['NameInRequest']);
  has CreationDateTime => (is => 'ro', isa => 'Str', request_name => 'creationDateTime', traits => ['NameInRequest']);
  has FailureReasons => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'failureReasons', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::BotVersionReplicaSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModelsV2::BotVersionReplicaSummary object:

  $service_obj->Method(Att1 => { BotVersion => $value, ..., FailureReasons => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModelsV2::BotVersionReplicaSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->BotVersion

=head1 DESCRIPTION

Contains summary information for all the version replication statuses
applicable for Global resiliency.

=head1 ATTRIBUTES


=head2 BotVersion => Str

The bot version for the summary information for all the version
replication statuses.


=head2 BotVersionReplicationStatus => Str

The version replication status for all the replicated bots.


=head2 CreationDateTime => Str

The creation date and time of the replication status for all the
replicated bots.


=head2 FailureReasons => ArrayRef[Str|Undef]

The reasons for replication failure for all the replicated bots.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

