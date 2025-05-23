# Generated by default/object.tt
package Paws::DevOpsGuru::ServiceHealth;
  use Moose;
  has AnalyzedResourceCount => (is => 'ro', isa => 'Int');
  has Insight => (is => 'ro', isa => 'Paws::DevOpsGuru::ServiceInsightHealth');
  has ServiceName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::ServiceHealth

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DevOpsGuru::ServiceHealth object:

  $service_obj->Method(Att1 => { AnalyzedResourceCount => $value, ..., ServiceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DevOpsGuru::ServiceHealth object:

  $result = $service_obj->Method(...);
  $result->Att1->AnalyzedResourceCount

=head1 DESCRIPTION

Represents the health of an Amazon Web Services service.

=head1 ATTRIBUTES


=head2 AnalyzedResourceCount => Int

Number of resources that DevOps Guru is monitoring in an analyzed
Amazon Web Services service.


=head2 Insight => L<Paws::DevOpsGuru::ServiceInsightHealth>

Represents the health of an Amazon Web Services service. This is a
C<ServiceInsightHealth> that contains the number of open proactive and
reactive insights for this service.


=head2 ServiceName => Str

The name of the Amazon Web Services service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

