# Generated by default/object.tt
package Paws::Appflow::AuthParameter;
  use Moose;
  has ConnectorSuppliedValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'connectorSuppliedValues', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has IsRequired => (is => 'ro', isa => 'Bool', request_name => 'isRequired', traits => ['NameInRequest']);
  has IsSensitiveField => (is => 'ro', isa => 'Bool', request_name => 'isSensitiveField', traits => ['NameInRequest']);
  has Key => (is => 'ro', isa => 'Str', request_name => 'key', traits => ['NameInRequest']);
  has Label => (is => 'ro', isa => 'Str', request_name => 'label', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::AuthParameter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Appflow::AuthParameter object:

  $service_obj->Method(Att1 => { ConnectorSuppliedValues => $value, ..., Label => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Appflow::AuthParameter object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectorSuppliedValues

=head1 DESCRIPTION

Information about required authentication parameters.

=head1 ATTRIBUTES


=head2 ConnectorSuppliedValues => ArrayRef[Str|Undef]

Contains default values for this authentication parameter that are
supplied by the connector.


=head2 Description => Str

A description about the authentication parameter.


=head2 IsRequired => Bool

Indicates whether this authentication parameter is required.


=head2 IsSensitiveField => Bool

Indicates whether this authentication parameter is a sensitive field.


=head2 Key => Str

The authentication key required to authenticate with the connector.


=head2 Label => Str

Label used for authentication parameter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

