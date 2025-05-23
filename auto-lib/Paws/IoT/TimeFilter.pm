# Generated by default/object.tt
package Paws::IoT::TimeFilter;
  use Moose;
  has After => (is => 'ro', isa => 'Str', request_name => 'after', traits => ['NameInRequest']);
  has Before => (is => 'ro', isa => 'Str', request_name => 'before', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::TimeFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::TimeFilter object:

  $service_obj->Method(Att1 => { After => $value, ..., Before => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::TimeFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->After

=head1 DESCRIPTION

A filter that can be used to list command executions for a device that
started or completed before or after a particular date and time.

=head1 ATTRIBUTES


=head2 After => Str

Filter to display command executions that started or completed only
after a particular date and time.


=head2 Before => Str

Filter to display command executions that started or completed only
before a particular date and time.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

