# Generated by default/object.tt
package Paws::ConnectCases::FieldSummary;
  use Moose;
  has FieldArn => (is => 'ro', isa => 'Str', request_name => 'fieldArn', traits => ['NameInRequest'], required => 1);
  has FieldId => (is => 'ro', isa => 'Str', request_name => 'fieldId', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Namespace => (is => 'ro', isa => 'Str', request_name => 'namespace', traits => ['NameInRequest'], required => 1);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::FieldSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ConnectCases::FieldSummary object:

  $service_obj->Method(Att1 => { FieldArn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ConnectCases::FieldSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->FieldArn

=head1 DESCRIPTION

Object for the summarized details of the field.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FieldArn => Str

The Amazon Resource Name (ARN) of the field.


=head2 B<REQUIRED> FieldId => Str

The unique identifier of a field.


=head2 B<REQUIRED> Name => Str

Name of the field.


=head2 B<REQUIRED> Namespace => Str

The namespace of a field.


=head2 B<REQUIRED> Type => Str

The type of a field.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ConnectCases>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

