# Generated by default/object.tt
package Paws::SSMIncidents::FindingDetails;
  use Moose;
  has CloudFormationStackUpdate => (is => 'ro', isa => 'Paws::SSMIncidents::CloudFormationStackUpdate', request_name => 'cloudFormationStackUpdate', traits => ['NameInRequest']);
  has CodeDeployDeployment => (is => 'ro', isa => 'Paws::SSMIncidents::CodeDeployDeployment', request_name => 'codeDeployDeployment', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::FindingDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSMIncidents::FindingDetails object:

  $service_obj->Method(Att1 => { CloudFormationStackUpdate => $value, ..., CodeDeployDeployment => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSMIncidents::FindingDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudFormationStackUpdate

=head1 DESCRIPTION

Extended textual information about the finding.

=head1 ATTRIBUTES


=head2 CloudFormationStackUpdate => L<Paws::SSMIncidents::CloudFormationStackUpdate>

Information about the CloudFormation stack creation or update
associated with the finding.


=head2 CodeDeployDeployment => L<Paws::SSMIncidents::CodeDeployDeployment>

Information about the CodeDeploy deployment associated with the
finding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSMIncidents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

