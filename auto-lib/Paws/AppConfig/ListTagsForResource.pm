
package Paws::AppConfig::ListTagsForResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tags/{ResourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::ResourceTags');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    # To list the tags of an application
    # The following list-tags-for-resource example lists the tags of a specified
    # application.
    my $ResourceTags = $appconfig->ListTagsForResource( 'ResourceArn' =>
        'arn:aws:appconfig:us-east-1:111122223333:application/339ohji' );

    # Results:
    my $Tags = $ResourceTags->Tags;

    # Returns a L<Paws::AppConfig::ResourceTags> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/ListTagsForResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The resource ARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

