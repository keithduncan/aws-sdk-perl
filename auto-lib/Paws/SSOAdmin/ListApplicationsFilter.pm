# Generated by default/object.tt
package Paws::SSOAdmin::ListApplicationsFilter;
  use Moose;
  has ApplicationAccount => (is => 'ro', isa => 'Str');
  has ApplicationProvider => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::ListApplicationsFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSOAdmin::ListApplicationsFilter object:

  $service_obj->Method(Att1 => { ApplicationAccount => $value, ..., ApplicationProvider => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSOAdmin::ListApplicationsFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationAccount

=head1 DESCRIPTION

A structure that describes a filter for applications.

=head1 ATTRIBUTES


=head2 ApplicationAccount => Str

An Amazon Web Services account ID number that filters the results in
the response.


=head2 ApplicationProvider => Str

The ARN of an application provider that can filter the results in the
response.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

