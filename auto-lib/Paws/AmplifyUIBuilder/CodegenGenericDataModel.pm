# Generated by default/object.tt
package Paws::AmplifyUIBuilder::CodegenGenericDataModel;
  use Moose;
  has Fields => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::CodegenGenericDataFields', request_name => 'fields', traits => ['NameInRequest'], required => 1);
  has IsJoinTable => (is => 'ro', isa => 'Bool', request_name => 'isJoinTable', traits => ['NameInRequest']);
  has PrimaryKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'primaryKeys', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::CodegenGenericDataModel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AmplifyUIBuilder::CodegenGenericDataModel object:

  $service_obj->Method(Att1 => { Fields => $value, ..., PrimaryKeys => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AmplifyUIBuilder::CodegenGenericDataModel object:

  $result = $service_obj->Method(...);
  $result->Att1->Fields

=head1 DESCRIPTION

Describes a model in a generic data schema.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Fields => L<Paws::AmplifyUIBuilder::CodegenGenericDataFields>

The fields in the generic data model.


=head2 IsJoinTable => Bool

Specifies whether the generic data model is a join table.


=head2 B<REQUIRED> PrimaryKeys => ArrayRef[Str|Undef]

The primary keys of the generic data model.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AmplifyUIBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

