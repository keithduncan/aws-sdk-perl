# Generated by default/object.tt
package Paws::AmplifyUIBuilder::CodegenGenericDataRelationshipType;
  use Moose;
  has AssociatedFields => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'associatedFields', traits => ['NameInRequest']);
  has BelongsToFieldOnRelatedModel => (is => 'ro', isa => 'Str', request_name => 'belongsToFieldOnRelatedModel', traits => ['NameInRequest']);
  has CanUnlinkAssociatedModel => (is => 'ro', isa => 'Bool', request_name => 'canUnlinkAssociatedModel', traits => ['NameInRequest']);
  has IsHasManyIndex => (is => 'ro', isa => 'Bool', request_name => 'isHasManyIndex', traits => ['NameInRequest']);
  has RelatedJoinFieldName => (is => 'ro', isa => 'Str', request_name => 'relatedJoinFieldName', traits => ['NameInRequest']);
  has RelatedJoinTableName => (is => 'ro', isa => 'Str', request_name => 'relatedJoinTableName', traits => ['NameInRequest']);
  has RelatedModelFields => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'relatedModelFields', traits => ['NameInRequest']);
  has RelatedModelName => (is => 'ro', isa => 'Str', request_name => 'relatedModelName', traits => ['NameInRequest'], required => 1);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::CodegenGenericDataRelationshipType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AmplifyUIBuilder::CodegenGenericDataRelationshipType object:

  $service_obj->Method(Att1 => { AssociatedFields => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AmplifyUIBuilder::CodegenGenericDataRelationshipType object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociatedFields

=head1 DESCRIPTION

Describes the relationship between generic data models.

=head1 ATTRIBUTES


=head2 AssociatedFields => ArrayRef[Str|Undef]

The associated fields of the data relationship.


=head2 BelongsToFieldOnRelatedModel => Str

The value of the C<belongsTo> field on the related data model.


=head2 CanUnlinkAssociatedModel => Bool

Specifies whether the relationship can unlink the associated model.


=head2 IsHasManyIndex => Bool

Specifies whether the C<@index> directive is supported for a C<hasMany>
data relationship.


=head2 RelatedJoinFieldName => Str

The name of the related join field in the data relationship.


=head2 RelatedJoinTableName => Str

The name of the related join table in the data relationship.


=head2 RelatedModelFields => ArrayRef[Str|Undef]

The related model fields in the data relationship.


=head2 B<REQUIRED> RelatedModelName => Str

The name of the related model in the data relationship.


=head2 B<REQUIRED> Type => Str

The data relationship type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AmplifyUIBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

