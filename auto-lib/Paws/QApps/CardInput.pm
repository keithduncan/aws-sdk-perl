# Generated by default/object.tt
package Paws::QApps::CardInput;
  use Moose;
  has FileUpload => (is => 'ro', isa => 'Paws::QApps::FileUploadCardInput', request_name => 'fileUpload', traits => ['NameInRequest']);
  has FormInput => (is => 'ro', isa => 'Paws::QApps::FormInputCardInput', request_name => 'formInput', traits => ['NameInRequest']);
  has QPlugin => (is => 'ro', isa => 'Paws::QApps::QPluginCardInput', request_name => 'qPlugin', traits => ['NameInRequest']);
  has QQuery => (is => 'ro', isa => 'Paws::QApps::QQueryCardInput', request_name => 'qQuery', traits => ['NameInRequest']);
  has TextInput => (is => 'ro', isa => 'Paws::QApps::TextInputCardInput', request_name => 'textInput', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::CardInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QApps::CardInput object:

  $service_obj->Method(Att1 => { FileUpload => $value, ..., TextInput => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QApps::CardInput object:

  $result = $service_obj->Method(...);
  $result->Att1->FileUpload

=head1 DESCRIPTION

The properties defining an input card in an Amazon Q App.

=head1 ATTRIBUTES


=head2 FileUpload => L<Paws::QApps::FileUploadCardInput>

A container for the properties of the file upload input card.


=head2 FormInput => L<Paws::QApps::FormInputCardInput>

A container for the properties of the form input card.


=head2 QPlugin => L<Paws::QApps::QPluginCardInput>

A container for the properties of the plugin input card.


=head2 QQuery => L<Paws::QApps::QQueryCardInput>

A container for the properties of the query input card.


=head2 TextInput => L<Paws::QApps::TextInputCardInput>

A container for the properties of the text input card.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QApps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

