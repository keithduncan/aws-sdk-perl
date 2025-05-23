# Generated by default/object.tt
package Paws::CleanRooms::ReceiverConfiguration;
  use Moose;
  has AnalysisType => (is => 'ro', isa => 'Str', request_name => 'analysisType', traits => ['NameInRequest'], required => 1);
  has ConfigurationDetails => (is => 'ro', isa => 'Paws::CleanRooms::ConfigurationDetails', request_name => 'configurationDetails', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ReceiverConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CleanRooms::ReceiverConfiguration object:

  $service_obj->Method(Att1 => { AnalysisType => $value, ..., ConfigurationDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CleanRooms::ReceiverConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AnalysisType

=head1 DESCRIPTION

The receiver configuration for a protected query.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisType => Str

The type of analysis for the protected query. The results of the query
can be analyzed directly (C<DIRECT_ANALYSIS>) or used as input into
additional analyses (C<ADDITIONAL_ANALYSIS>), such as a query that is a
seed for a lookalike ML model.


=head2 ConfigurationDetails => L<Paws::CleanRooms::ConfigurationDetails>

The configuration details of the receiver configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

