# Generated by default/object.tt
package Paws::AmplifyUIBuilder::ComponentSummary;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', request_name => 'appId', traits => ['NameInRequest'], required => 1);
  has ComponentType => (is => 'ro', isa => 'Str', request_name => 'componentType', traits => ['NameInRequest'], required => 1);
  has EnvironmentName => (is => 'ro', isa => 'Str', request_name => 'environmentName', traits => ['NameInRequest'], required => 1);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::ComponentSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AmplifyUIBuilder::ComponentSummary object:

  $service_obj->Method(Att1 => { AppId => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AmplifyUIBuilder::ComponentSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->AppId

=head1 DESCRIPTION

Contains a summary of a component. This is a read-only data type that
is returned by C<ListComponents>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The unique ID of the Amplify app associated with the component.


=head2 B<REQUIRED> ComponentType => Str

The component type.


=head2 B<REQUIRED> EnvironmentName => Str

The name of the backend environment that is a part of the Amplify app.


=head2 B<REQUIRED> Id => Str

The unique ID of the component.


=head2 B<REQUIRED> Name => Str

The name of the component.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AmplifyUIBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

