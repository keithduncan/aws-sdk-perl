# Generated by default/object.tt
package Paws::IoTDeviceAdvisor::GroupResult;
  use Moose;
  has GroupId => (is => 'ro', isa => 'Str', request_name => 'groupId', traits => ['NameInRequest']);
  has GroupName => (is => 'ro', isa => 'Str', request_name => 'groupName', traits => ['NameInRequest']);
  has Tests => (is => 'ro', isa => 'ArrayRef[Paws::IoTDeviceAdvisor::TestCaseRun]', request_name => 'tests', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTDeviceAdvisor::GroupResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTDeviceAdvisor::GroupResult object:

  $service_obj->Method(Att1 => { GroupId => $value, ..., Tests => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTDeviceAdvisor::GroupResult object:

  $result = $service_obj->Method(...);
  $result->Att1->GroupId

=head1 DESCRIPTION

Show Group Result.

=head1 ATTRIBUTES


=head2 GroupId => Str

Group result ID.


=head2 GroupName => Str

Group Result Name.


=head2 Tests => ArrayRef[L<Paws::IoTDeviceAdvisor::TestCaseRun>]

Tests under Group Result.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTDeviceAdvisor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

