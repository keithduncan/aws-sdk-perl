
package Paws::SSM::DeleteParameters;
  use Moose;
  has Names => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteParameters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DeleteParametersResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DeleteParameters - Arguments for method DeleteParameters on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteParameters on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DeleteParameters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteParameters.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DeleteParametersResult = $ssm->DeleteParameters(
      Names => [
        'MyPSParameterName', ...    # min: 1, max: 2048
      ],

    );

    # Results:
    my $DeletedParameters = $DeleteParametersResult->DeletedParameters;
    my $InvalidParameters = $DeleteParametersResult->InvalidParameters;

    # Returns a L<Paws::SSM::DeleteParametersResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DeleteParameters>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Names => ArrayRef[Str|Undef]

The names of the parameters to delete. After deleting a parameter, wait
for at least 30 seconds to create a parameter with the same name.

You can't enter the Amazon Resource Name (ARN) for a parameter, only
the parameter name itself.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteParameters in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

