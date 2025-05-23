# Generated by default/object.tt
package Paws::DevOpsGuru::CloudFormationHealth;
  use Moose;
  has AnalyzedResourceCount => (is => 'ro', isa => 'Int');
  has Insight => (is => 'ro', isa => 'Paws::DevOpsGuru::InsightHealth');
  has StackName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::CloudFormationHealth

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DevOpsGuru::CloudFormationHealth object:

  $service_obj->Method(Att1 => { AnalyzedResourceCount => $value, ..., StackName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DevOpsGuru::CloudFormationHealth object:

  $result = $service_obj->Method(...);
  $result->Att1->AnalyzedResourceCount

=head1 DESCRIPTION

Information about the health of Amazon Web Services resources in your
account that are specified by an Amazon Web Services CloudFormation
stack.

=head1 ATTRIBUTES


=head2 AnalyzedResourceCount => Int

Number of resources that DevOps Guru is monitoring in your account that
are specified by an Amazon Web Services CloudFormation stack.


=head2 Insight => L<Paws::DevOpsGuru::InsightHealth>

Information about the health of the Amazon Web Services resources in
your account that are specified by an Amazon Web Services
CloudFormation stack, including the number of open proactive, open
reactive insights, and the Mean Time to Recover (MTTR) of closed
insights.


=head2 StackName => Str

The name of the CloudFormation stack.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

