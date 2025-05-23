# Generated by default/object.tt
package Paws::CleanRooms::CollaborationConfiguredAudienceModelAssociation;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest'], required => 1);
  has CollaborationArn => (is => 'ro', isa => 'Str', request_name => 'collaborationArn', traits => ['NameInRequest'], required => 1);
  has CollaborationId => (is => 'ro', isa => 'Str', request_name => 'collaborationId', traits => ['NameInRequest'], required => 1);
  has ConfiguredAudienceModelArn => (is => 'ro', isa => 'Str', request_name => 'configuredAudienceModelArn', traits => ['NameInRequest'], required => 1);
  has CreateTime => (is => 'ro', isa => 'Str', request_name => 'createTime', traits => ['NameInRequest'], required => 1);
  has CreatorAccountId => (is => 'ro', isa => 'Str', request_name => 'creatorAccountId', traits => ['NameInRequest'], required => 1);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', request_name => 'updateTime', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::CollaborationConfiguredAudienceModelAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CleanRooms::CollaborationConfiguredAudienceModelAssociation object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UpdateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CleanRooms::CollaborationConfiguredAudienceModelAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

The configured audience model association within a collaboration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the configured audience model
association.


=head2 B<REQUIRED> CollaborationArn => Str

The unique ARN for the configured audience model's associated
collaboration.


=head2 B<REQUIRED> CollaborationId => Str

A unique identifier for the collaboration that the configured audience
model associations belong to. Accepts collaboration ID.


=head2 B<REQUIRED> ConfiguredAudienceModelArn => Str

The Amazon Resource Name (ARN) of the configure audience model.


=head2 B<REQUIRED> CreateTime => Str

The time at which the configured audience model association was
created.


=head2 B<REQUIRED> CreatorAccountId => Str

The identifier used to reference members of the collaboration. Only
supports Amazon Web Services account ID.


=head2 Description => Str

The description of the configured audience model association.


=head2 B<REQUIRED> Id => Str

The identifier of the configured audience model association.


=head2 B<REQUIRED> Name => Str

The name of the configured audience model association.


=head2 B<REQUIRED> UpdateTime => Str

The most recent time at which the configured audience model association
was updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

