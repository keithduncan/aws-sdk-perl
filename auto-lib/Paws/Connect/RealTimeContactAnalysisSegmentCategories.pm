# Generated by default/object.tt
package Paws::Connect::RealTimeContactAnalysisSegmentCategories;
  use Moose;
  has MatchedDetails => (is => 'ro', isa => 'Paws::Connect::RealTimeContactAnalysisMatchedDetails', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::RealTimeContactAnalysisSegmentCategories

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::RealTimeContactAnalysisSegmentCategories object:

  $service_obj->Method(Att1 => { MatchedDetails => $value, ..., MatchedDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::RealTimeContactAnalysisSegmentCategories object:

  $result = $service_obj->Method(...);
  $result->Att1->MatchedDetails

=head1 DESCRIPTION

The matched category rules.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MatchedDetails => L<Paws::Connect::RealTimeContactAnalysisMatchedDetails>

Map between the name of the matched rule and
RealTimeContactAnalysisCategoryDetails.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

