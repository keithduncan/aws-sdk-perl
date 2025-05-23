# Generated by default/object.tt
package Paws::NetworkManager::RouteAnalysisPath;
  use Moose;
  has CompletionStatus => (is => 'ro', isa => 'Paws::NetworkManager::RouteAnalysisCompletion');
  has Path => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::PathComponent]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::RouteAnalysisPath

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NetworkManager::RouteAnalysisPath object:

  $service_obj->Method(Att1 => { CompletionStatus => $value, ..., Path => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NetworkManager::RouteAnalysisPath object:

  $result = $service_obj->Method(...);
  $result->Att1->CompletionStatus

=head1 DESCRIPTION

Describes a route analysis path.

=head1 ATTRIBUTES


=head2 CompletionStatus => L<Paws::NetworkManager::RouteAnalysisCompletion>

The status of the analysis at completion.


=head2 Path => ArrayRef[L<Paws::NetworkManager::PathComponent>]

The route analysis path.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

