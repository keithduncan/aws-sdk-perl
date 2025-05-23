# Generated by default/object.tt
package Paws::AmplifyUIBuilder::FormStyleConfig;
  use Moose;
  has TokenReference => (is => 'ro', isa => 'Str', request_name => 'tokenReference', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Str', request_name => 'value', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::FormStyleConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AmplifyUIBuilder::FormStyleConfig object:

  $service_obj->Method(Att1 => { TokenReference => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AmplifyUIBuilder::FormStyleConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->TokenReference

=head1 DESCRIPTION

Describes the configuration settings for the form's style properties.

=head1 ATTRIBUTES


=head2 TokenReference => Str

A reference to a design token to use to bind the form's style
properties to an existing theme.


=head2 Value => Str

The value of the style setting.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AmplifyUIBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

