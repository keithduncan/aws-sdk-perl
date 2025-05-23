
package Paws::SSM::ListAssociations;
  use Moose;
  has AssociationFilterList => (is => 'ro', isa => 'ArrayRef[Paws::SSM::AssociationFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAssociations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::ListAssociationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListAssociations - Arguments for method ListAssociations on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAssociations on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method ListAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAssociations.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $ListAssociationsResult = $ssm->ListAssociations(
      AssociationFilterList => [
        {
          Key => 'InstanceId'
          , # values: InstanceId, Name, AssociationId, AssociationStatusName, LastExecutedBefore, LastExecutedAfter, AssociationName, ResourceGroupName
          Value => 'MyAssociationFilterValue',    # min: 1

        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Associations = $ListAssociationsResult->Associations;
    my $NextToken    = $ListAssociationsResult->NextToken;

    # Returns a L<Paws::SSM::ListAssociationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/ListAssociations>

=head1 ATTRIBUTES


=head2 AssociationFilterList => ArrayRef[L<Paws::SSM::AssociationFilter>]

One or more filters. Use a filter to return a more specific list of
results.

Filtering associations using the C<InstanceID> attribute only returns
legacy associations created using the C<InstanceID> attribute.
Associations targeting the managed node that are part of the Target
Attributes C<ResourceGroup> or C<Tags> aren't returned.



=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAssociations in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

