# Generated by default/object.tt
package Paws::LexModelsV2::BotAliasReplicaSummary;
  use Moose;
  has BotAliasId => (is => 'ro', isa => 'Str', request_name => 'botAliasId', traits => ['NameInRequest']);
  has BotAliasReplicationStatus => (is => 'ro', isa => 'Str', request_name => 'botAliasReplicationStatus', traits => ['NameInRequest']);
  has BotVersion => (is => 'ro', isa => 'Str', request_name => 'botVersion', traits => ['NameInRequest']);
  has CreationDateTime => (is => 'ro', isa => 'Str', request_name => 'creationDateTime', traits => ['NameInRequest']);
  has FailureReasons => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'failureReasons', traits => ['NameInRequest']);
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedDateTime', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::BotAliasReplicaSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModelsV2::BotAliasReplicaSummary object:

  $service_obj->Method(Att1 => { BotAliasId => $value, ..., LastUpdatedDateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModelsV2::BotAliasReplicaSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->BotAliasId

=head1 DESCRIPTION

Contains information about all the aliases replication statuses
applicable for global resiliency.

=head1 ATTRIBUTES


=head2 BotAliasId => Str

The bot alias ID for all the alias bot replications.


=head2 BotAliasReplicationStatus => Str

The replication statuses for all the alias bot replications.


=head2 BotVersion => Str

The bot version for all the alias bot replications.


=head2 CreationDateTime => Str

The creation time and date for all the alias bot replications.


=head2 FailureReasons => ArrayRef[Str|Undef]

The reasons for failure for the aliases bot replications.


=head2 LastUpdatedDateTime => Str

The last time and date updated for all the alias bot replications.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

