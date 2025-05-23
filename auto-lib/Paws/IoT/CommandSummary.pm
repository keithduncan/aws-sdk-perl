# Generated by default/object.tt
package Paws::IoT::CommandSummary;
  use Moose;
  has CommandArn => (is => 'ro', isa => 'Str', request_name => 'commandArn', traits => ['NameInRequest']);
  has CommandId => (is => 'ro', isa => 'Str', request_name => 'commandId', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has Deprecated => (is => 'ro', isa => 'Bool', request_name => 'deprecated', traits => ['NameInRequest']);
  has DisplayName => (is => 'ro', isa => 'Str', request_name => 'displayName', traits => ['NameInRequest']);
  has LastUpdatedAt => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedAt', traits => ['NameInRequest']);
  has PendingDeletion => (is => 'ro', isa => 'Bool', request_name => 'pendingDeletion', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CommandSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::CommandSummary object:

  $service_obj->Method(Att1 => { CommandArn => $value, ..., PendingDeletion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::CommandSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CommandArn

=head1 DESCRIPTION

Summary information about a particular command resource.

=head1 ATTRIBUTES


=head2 CommandArn => Str

The Amazon Resource Name (ARN) of the command.


=head2 CommandId => Str

The unique identifier of the command.


=head2 CreatedAt => Str

The timestamp, when the command was created.


=head2 Deprecated => Bool

Indicates whether the command has been deprecated.


=head2 DisplayName => Str

The display name of the command.


=head2 LastUpdatedAt => Str

The timestamp, when the command was last updated.


=head2 PendingDeletion => Bool

Indicates whether the command is pending deletion.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

