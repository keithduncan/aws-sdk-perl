# Generated by default/object.tt
package Paws::AppTest::MainframeAction;
  use Moose;
  has ActionType => (is => 'ro', isa => 'Paws::AppTest::MainframeActionType', request_name => 'actionType', traits => ['NameInRequest'], required => 1);
  has Properties => (is => 'ro', isa => 'Paws::AppTest::MainframeActionProperties', request_name => 'properties', traits => ['NameInRequest']);
  has Resource => (is => 'ro', isa => 'Str', request_name => 'resource', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::MainframeAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppTest::MainframeAction object:

  $service_obj->Method(Att1 => { ActionType => $value, ..., Resource => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppTest::MainframeAction object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionType

=head1 DESCRIPTION

Specifies the mainframe action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionType => L<Paws::AppTest::MainframeActionType>

The action type of the mainframe action.


=head2 Properties => L<Paws::AppTest::MainframeActionProperties>

The properties of the mainframe action.


=head2 B<REQUIRED> Resource => Str

The resource of the mainframe action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppTest>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

