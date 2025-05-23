
package Paws::SSM::DeleteParameter;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteParameter');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DeleteParameterResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DeleteParameter - Arguments for method DeleteParameter on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteParameter on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DeleteParameter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteParameter.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DeleteParameterResult = $ssm->DeleteParameter(
      Name => 'MyPSParameterName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DeleteParameter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the parameter to delete.

You can't enter the Amazon Resource Name (ARN) for a parameter, only
the parameter name itself.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteParameter in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

