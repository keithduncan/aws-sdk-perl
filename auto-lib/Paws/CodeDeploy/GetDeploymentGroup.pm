
package Paws::CodeDeploy::GetDeploymentGroup;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationName' , required => 1);
  has DeploymentGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentGroupName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDeploymentGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::GetDeploymentGroupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::GetDeploymentGroup - Arguments for method GetDeploymentGroup on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDeploymentGroup on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method GetDeploymentGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDeploymentGroup.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    my $GetDeploymentGroupOutput = $codedeploy->GetDeploymentGroup(
      ApplicationName     => 'MyApplicationName',
      DeploymentGroupName => 'MyDeploymentGroupName',

    );

    # Results:
    my $DeploymentGroupInfo = $GetDeploymentGroupOutput->DeploymentGroupInfo;

    # Returns a L<Paws::CodeDeploy::GetDeploymentGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/GetDeploymentGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of an CodeDeploy application associated with the user or
Amazon Web Services account.



=head2 B<REQUIRED> DeploymentGroupName => Str

The name of a deployment group for the specified application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDeploymentGroup in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

