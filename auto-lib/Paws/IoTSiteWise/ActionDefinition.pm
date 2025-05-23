# Generated by default/object.tt
package Paws::IoTSiteWise::ActionDefinition;
  use Moose;
  has ActionDefinitionId => (is => 'ro', isa => 'Str', request_name => 'actionDefinitionId', traits => ['NameInRequest'], required => 1);
  has ActionName => (is => 'ro', isa => 'Str', request_name => 'actionName', traits => ['NameInRequest'], required => 1);
  has ActionType => (is => 'ro', isa => 'Str', request_name => 'actionType', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ActionDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTSiteWise::ActionDefinition object:

  $service_obj->Method(Att1 => { ActionDefinitionId => $value, ..., ActionType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTSiteWise::ActionDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionDefinitionId

=head1 DESCRIPTION

Contains a definition for an action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionDefinitionId => Str

The ID of the action definition.


=head2 B<REQUIRED> ActionName => Str

The name of the action definition.


=head2 B<REQUIRED> ActionType => Str

The type of the action definition.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

