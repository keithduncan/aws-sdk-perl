# Generated by default/object.tt
package Paws::Inspector2::StopCisSessionMessage;
  use Moose;
  has BenchmarkProfile => (is => 'ro', isa => 'Str', request_name => 'benchmarkProfile', traits => ['NameInRequest']);
  has BenchmarkVersion => (is => 'ro', isa => 'Str', request_name => 'benchmarkVersion', traits => ['NameInRequest']);
  has ComputePlatform => (is => 'ro', isa => 'Paws::Inspector2::ComputePlatform', request_name => 'computePlatform', traits => ['NameInRequest']);
  has Progress => (is => 'ro', isa => 'Paws::Inspector2::StopCisMessageProgress', request_name => 'progress', traits => ['NameInRequest'], required => 1);
  has Reason => (is => 'ro', isa => 'Str', request_name => 'reason', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::StopCisSessionMessage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector2::StopCisSessionMessage object:

  $service_obj->Method(Att1 => { BenchmarkProfile => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector2::StopCisSessionMessage object:

  $result = $service_obj->Method(...);
  $result->Att1->BenchmarkProfile

=head1 DESCRIPTION

The stop CIS session message.

=head1 ATTRIBUTES


=head2 BenchmarkProfile => Str

The message benchmark profile.


=head2 BenchmarkVersion => Str

The message benchmark version.


=head2 ComputePlatform => L<Paws::Inspector2::ComputePlatform>

The message compute platform.


=head2 B<REQUIRED> Progress => L<Paws::Inspector2::StopCisMessageProgress>

The progress of the message.


=head2 Reason => Str

The reason for the message.


=head2 B<REQUIRED> Status => Str

The status of the message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

