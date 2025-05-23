# Generated by default/object.tt
package Paws::AmplifyUIBuilder::CreateFormData;
  use Moose;
  has Cta => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::FormCTA', request_name => 'cta', traits => ['NameInRequest']);
  has DataType => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::FormDataTypeConfig', request_name => 'dataType', traits => ['NameInRequest'], required => 1);
  has Fields => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::FieldsMap', request_name => 'fields', traits => ['NameInRequest'], required => 1);
  has FormActionType => (is => 'ro', isa => 'Str', request_name => 'formActionType', traits => ['NameInRequest'], required => 1);
  has LabelDecorator => (is => 'ro', isa => 'Str', request_name => 'labelDecorator', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has SchemaVersion => (is => 'ro', isa => 'Str', request_name => 'schemaVersion', traits => ['NameInRequest'], required => 1);
  has SectionalElements => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::SectionalElementMap', request_name => 'sectionalElements', traits => ['NameInRequest'], required => 1);
  has Style => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::FormStyle', request_name => 'style', traits => ['NameInRequest'], required => 1);
  has Tags => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::Tags', request_name => 'tags', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::CreateFormData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AmplifyUIBuilder::CreateFormData object:

  $service_obj->Method(Att1 => { Cta => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AmplifyUIBuilder::CreateFormData object:

  $result = $service_obj->Method(...);
  $result->Att1->Cta

=head1 DESCRIPTION

Represents all of the information that is required to create a form.

=head1 ATTRIBUTES


=head2 Cta => L<Paws::AmplifyUIBuilder::FormCTA>

The C<FormCTA> object that stores the call to action configuration for
the form.


=head2 B<REQUIRED> DataType => L<Paws::AmplifyUIBuilder::FormDataTypeConfig>

The type of data source to use to create the form.


=head2 B<REQUIRED> Fields => L<Paws::AmplifyUIBuilder::FieldsMap>

The configuration information for the form's fields.


=head2 B<REQUIRED> FormActionType => Str

Specifies whether to perform a create or update action on the form.


=head2 LabelDecorator => Str

Specifies an icon or decoration to display on the form.


=head2 B<REQUIRED> Name => Str

The name of the form.


=head2 B<REQUIRED> SchemaVersion => Str

The schema version of the form.


=head2 B<REQUIRED> SectionalElements => L<Paws::AmplifyUIBuilder::SectionalElementMap>

The configuration information for the visual helper elements for the
form. These elements are not associated with any data.


=head2 B<REQUIRED> Style => L<Paws::AmplifyUIBuilder::FormStyle>

The configuration for the form's style.


=head2 Tags => L<Paws::AmplifyUIBuilder::Tags>

One or more key-value pairs to use when tagging the form data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AmplifyUIBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

