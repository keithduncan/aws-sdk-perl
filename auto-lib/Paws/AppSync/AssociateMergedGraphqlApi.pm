
package Paws::AppSync::AssociateMergedGraphqlApi;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has MergedApiIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mergedApiIdentifier', required => 1);
  has SourceApiAssociationConfig => (is => 'ro', isa => 'Paws::AppSync::SourceApiAssociationConfig', traits => ['NameInRequest'], request_name => 'sourceApiAssociationConfig');
  has SourceApiIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sourceApiIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateMergedGraphqlApi');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/sourceApis/{sourceApiIdentifier}/mergedApiAssociations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::AssociateMergedGraphqlApiResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::AssociateMergedGraphqlApi - Arguments for method AssociateMergedGraphqlApi on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateMergedGraphqlApi on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method AssociateMergedGraphqlApi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateMergedGraphqlApi.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $AssociateMergedGraphqlApiResponse = $appsync->AssociateMergedGraphqlApi(
      MergedApiIdentifier        => 'MyString',
      SourceApiIdentifier        => 'MyString',
      Description                => 'MyString',    # OPTIONAL
      SourceApiAssociationConfig => {
        MergeType =>
          'MANUAL_MERGE',    # values: MANUAL_MERGE, AUTO_MERGE; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $SourceApiAssociation =
      $AssociateMergedGraphqlApiResponse->SourceApiAssociation;

    # Returns a L<Paws::AppSync::AssociateMergedGraphqlApiResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/AssociateMergedGraphqlApi>

=head1 ATTRIBUTES


=head2 Description => Str

The description field.



=head2 B<REQUIRED> MergedApiIdentifier => Str

The identifier of the AppSync Merged API. This is generated by the
AppSync service. In most cases, Merged APIs (especially in your
account) only require the API ID value or ARN of the merged API.
However, Merged APIs in other accounts (cross-account use cases)
strictly require the full resource ARN of the merged API.



=head2 SourceApiAssociationConfig => L<Paws::AppSync::SourceApiAssociationConfig>

The C<SourceApiAssociationConfig> object data.



=head2 B<REQUIRED> SourceApiIdentifier => Str

The identifier of the AppSync Source API. This is generated by the
AppSync service. In most cases, source APIs (especially in your
account) only require the API ID value or ARN of the source API.
However, source APIs from other accounts (cross-account use cases)
strictly require the full resource ARN of the source API.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateMergedGraphqlApi in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

