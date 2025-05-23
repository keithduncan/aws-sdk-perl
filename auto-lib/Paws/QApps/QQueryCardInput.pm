# Generated by default/object.tt
package Paws::QApps::QQueryCardInput;
  use Moose;
  has AttributeFilter => (is => 'ro', isa => 'Paws::QApps::AttributeFilter', request_name => 'attributeFilter', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);
  has OutputSource => (is => 'ro', isa => 'Str', request_name => 'outputSource', traits => ['NameInRequest']);
  has Prompt => (is => 'ro', isa => 'Str', request_name => 'prompt', traits => ['NameInRequest'], required => 1);
  has Title => (is => 'ro', isa => 'Str', request_name => 'title', traits => ['NameInRequest'], required => 1);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::QQueryCardInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QApps::QQueryCardInput object:

  $service_obj->Method(Att1 => { AttributeFilter => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QApps::QQueryCardInput object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeFilter

=head1 DESCRIPTION

The input shape for defining a query card in an Amazon Q App.

=head1 ATTRIBUTES


=head2 AttributeFilter => L<Paws::QApps::AttributeFilter>

Turns on filtering of responses based on document attributes or
metadata fields.


=head2 B<REQUIRED> Id => Str

The unique identifier of the query card.


=head2 OutputSource => Str

The source or type of output to generate for the query card.


=head2 B<REQUIRED> Prompt => Str

The prompt or instructions displayed for the query card.


=head2 B<REQUIRED> Title => Str

The title or label of the query card.


=head2 B<REQUIRED> Type => Str

The type of the card.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QApps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

