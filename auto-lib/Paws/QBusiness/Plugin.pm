# Generated by default/object.tt
package Paws::QBusiness::Plugin;
  use Moose;
  has BuildStatus => (is => 'ro', isa => 'Str', request_name => 'buildStatus', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has DisplayName => (is => 'ro', isa => 'Str', request_name => 'displayName', traits => ['NameInRequest']);
  has PluginId => (is => 'ro', isa => 'Str', request_name => 'pluginId', traits => ['NameInRequest']);
  has ServerUrl => (is => 'ro', isa => 'Str', request_name => 'serverUrl', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
  has UpdatedAt => (is => 'ro', isa => 'Str', request_name => 'updatedAt', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::Plugin

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QBusiness::Plugin object:

  $service_obj->Method(Att1 => { BuildStatus => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QBusiness::Plugin object:

  $result = $service_obj->Method(...);
  $result->Att1->BuildStatus

=head1 DESCRIPTION

Information about an Amazon Q Business plugin and its configuration.

=head1 ATTRIBUTES


=head2 BuildStatus => Str

The status of the plugin.


=head2 CreatedAt => Str

The timestamp for when the plugin was created.


=head2 DisplayName => Str

The name of the plugin.


=head2 PluginId => Str

The identifier of the plugin.


=head2 ServerUrl => Str

The plugin server URL used for configuration.


=head2 State => Str

The current status of the plugin.


=head2 Type => Str

The type of the plugin.


=head2 UpdatedAt => Str

The timestamp for when the plugin was last updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

