# Generated by default/object.tt
package Paws::CleanRooms::IdNamespaceAssociationSummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest'], required => 1);
  has CollaborationArn => (is => 'ro', isa => 'Str', request_name => 'collaborationArn', traits => ['NameInRequest'], required => 1);
  has CollaborationId => (is => 'ro', isa => 'Str', request_name => 'collaborationId', traits => ['NameInRequest'], required => 1);
  has CreateTime => (is => 'ro', isa => 'Str', request_name => 'createTime', traits => ['NameInRequest'], required => 1);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);
  has InputReferenceConfig => (is => 'ro', isa => 'Paws::CleanRooms::IdNamespaceAssociationInputReferenceConfig', request_name => 'inputReferenceConfig', traits => ['NameInRequest'], required => 1);
  has InputReferenceProperties => (is => 'ro', isa => 'Paws::CleanRooms::IdNamespaceAssociationInputReferencePropertiesSummary', request_name => 'inputReferenceProperties', traits => ['NameInRequest'], required => 1);
  has MembershipArn => (is => 'ro', isa => 'Str', request_name => 'membershipArn', traits => ['NameInRequest'], required => 1);
  has MembershipId => (is => 'ro', isa => 'Str', request_name => 'membershipId', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', request_name => 'updateTime', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::IdNamespaceAssociationSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CleanRooms::IdNamespaceAssociationSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UpdateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CleanRooms::IdNamespaceAssociationSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Detailed information about the ID namespace association.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of this ID namespace association.


=head2 B<REQUIRED> CollaborationArn => Str

The Amazon Resource Name (ARN) of the collaboration that contains this
ID namespace association.


=head2 B<REQUIRED> CollaborationId => Str

The unique identifier of the collaboration that contains this ID
namespace association.


=head2 B<REQUIRED> CreateTime => Str

The time at which this ID namespace association was created.


=head2 Description => Str

The description of the ID namespace association.


=head2 B<REQUIRED> Id => Str

The unique identifier of this ID namespace association.


=head2 B<REQUIRED> InputReferenceConfig => L<Paws::CleanRooms::IdNamespaceAssociationInputReferenceConfig>

The input reference configuration details for this ID namespace
association.


=head2 B<REQUIRED> InputReferenceProperties => L<Paws::CleanRooms::IdNamespaceAssociationInputReferencePropertiesSummary>

The input reference properties for this ID namespace association.


=head2 B<REQUIRED> MembershipArn => Str

The Amazon Resource Name (ARN) of the membership resource for this ID
namespace association.


=head2 B<REQUIRED> MembershipId => Str

The unique identifier of the membership resource for this ID namespace
association.


=head2 B<REQUIRED> Name => Str

The name of the ID namespace association.


=head2 B<REQUIRED> UpdateTime => Str

The most recent time at which this ID namespace association has been
updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

