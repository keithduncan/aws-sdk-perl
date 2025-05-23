
package Paws::SSM::LabelParameterVersion;
  use Moose;
  has Labels => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ParameterVersion => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'LabelParameterVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::LabelParameterVersionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::LabelParameterVersion - Arguments for method LabelParameterVersion on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method LabelParameterVersion on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method LabelParameterVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to LabelParameterVersion.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $LabelParameterVersionResult = $ssm->LabelParameterVersion(
      Labels => [
        'MyParameterLabel', ...    # min: 1, max: 100
      ],
      Name             => 'MyPSParameterName',
      ParameterVersion => 1,                     # OPTIONAL
    );

    # Results:
    my $InvalidLabels    = $LabelParameterVersionResult->InvalidLabels;
    my $ParameterVersion = $LabelParameterVersionResult->ParameterVersion;

    # Returns a L<Paws::SSM::LabelParameterVersionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/LabelParameterVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Labels => ArrayRef[Str|Undef]

One or more labels to attach to the specified parameter version.



=head2 B<REQUIRED> Name => Str

The parameter name on which you want to attach one or more labels.

You can't enter the Amazon Resource Name (ARN) for a parameter, only
the parameter name itself.



=head2 ParameterVersion => Int

The specific version of the parameter on which you want to attach one
or more labels. If no version is specified, the system attaches the
label to the latest version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method LabelParameterVersion in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

