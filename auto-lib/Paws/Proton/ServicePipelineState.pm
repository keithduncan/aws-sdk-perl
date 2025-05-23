# Generated by default/object.tt
package Paws::Proton::ServicePipelineState;
  use Moose;
  has Spec => (is => 'ro', isa => 'Str', request_name => 'spec', traits => ['NameInRequest']);
  has TemplateMajorVersion => (is => 'ro', isa => 'Str', request_name => 'templateMajorVersion', traits => ['NameInRequest'], required => 1);
  has TemplateMinorVersion => (is => 'ro', isa => 'Str', request_name => 'templateMinorVersion', traits => ['NameInRequest'], required => 1);
  has TemplateName => (is => 'ro', isa => 'Str', request_name => 'templateName', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ServicePipelineState

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Proton::ServicePipelineState object:

  $service_obj->Method(Att1 => { Spec => $value, ..., TemplateName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Proton::ServicePipelineState object:

  $result = $service_obj->Method(...);
  $result->Att1->Spec

=head1 DESCRIPTION

The detailed data about the current state of the service pipeline.

=head1 ATTRIBUTES


=head2 Spec => Str

The service spec that was used to create the service pipeline.


=head2 B<REQUIRED> TemplateMajorVersion => Str

The major version of the service template that was used to create the
service pipeline.


=head2 B<REQUIRED> TemplateMinorVersion => Str

The minor version of the service template that was used to create the
service pipeline.


=head2 B<REQUIRED> TemplateName => Str

The name of the service template that was used to create the service
pipeline.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

