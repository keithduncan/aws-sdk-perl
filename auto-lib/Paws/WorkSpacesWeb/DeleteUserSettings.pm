
package Paws::WorkSpacesWeb::DeleteUserSettings;
  use Moose;
  has UserSettingsArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'userSettingsArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUserSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/userSettings/{userSettingsArn+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpacesWeb::DeleteUserSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::DeleteUserSettings - Arguments for method DeleteUserSettings on L<Paws::WorkSpacesWeb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteUserSettings on the
L<Amazon WorkSpaces Web|Paws::WorkSpacesWeb> service. Use the attributes of this class
as arguments to method DeleteUserSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteUserSettings.

=head1 SYNOPSIS

    my $workspaces-web = Paws->service('WorkSpacesWeb');
    my $DeleteUserSettingsResponse = $workspaces -web->DeleteUserSettings(
      UserSettingsArn => 'MyARN',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces-web/DeleteUserSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> UserSettingsArn => Str

The ARN of the user settings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteUserSettings in L<Paws::WorkSpacesWeb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

