
package Paws::AppConfig::ListExtensionAssociations;
  use Moose;
  has ExtensionIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'extension_identifier');
  has ExtensionVersionNumber => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'extension_version_number');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max_results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next_token');
  has ResourceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resource_identifier');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListExtensionAssociations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/extensionassociations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::ExtensionAssociations');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::ListExtensionAssociations - Arguments for method ListExtensionAssociations on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListExtensionAssociations on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method ListExtensionAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListExtensionAssociations.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    my $ExtensionAssociations = $appconfig->ListExtensionAssociations(
      ExtensionIdentifier    => 'MyIdentifier',    # OPTIONAL
      ExtensionVersionNumber => 1,                 # OPTIONAL
      MaxResults             => 1,                 # OPTIONAL
      NextToken              => 'MyNextToken',     # OPTIONAL
      ResourceIdentifier     => 'MyArn',           # OPTIONAL
    );

    # Results:
    my $Items     = $ExtensionAssociations->Items;
    my $NextToken = $ExtensionAssociations->NextToken;

    # Returns a L<Paws::AppConfig::ExtensionAssociations> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/ListExtensionAssociations>

=head1 ATTRIBUTES


=head2 ExtensionIdentifier => Str

The name, the ID, or the Amazon Resource Name (ARN) of the extension.



=head2 ExtensionVersionNumber => Int

The version number for the extension defined in the association.



=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

A token to start the list. Use this token to get the next set of
results or pass null to get the first set of results.



=head2 ResourceIdentifier => Str

The ARN of an application, configuration profile, or environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListExtensionAssociations in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

