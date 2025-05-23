# Generated by default/object.tt
package Paws::AuditManager::CreateControlMappingSource;
  use Moose;
  has SourceDescription => (is => 'ro', isa => 'Str', request_name => 'sourceDescription', traits => ['NameInRequest']);
  has SourceFrequency => (is => 'ro', isa => 'Str', request_name => 'sourceFrequency', traits => ['NameInRequest']);
  has SourceKeyword => (is => 'ro', isa => 'Paws::AuditManager::SourceKeyword', request_name => 'sourceKeyword', traits => ['NameInRequest']);
  has SourceName => (is => 'ro', isa => 'Str', request_name => 'sourceName', traits => ['NameInRequest']);
  has SourceSetUpOption => (is => 'ro', isa => 'Str', request_name => 'sourceSetUpOption', traits => ['NameInRequest']);
  has SourceType => (is => 'ro', isa => 'Str', request_name => 'sourceType', traits => ['NameInRequest']);
  has TroubleshootingText => (is => 'ro', isa => 'Str', request_name => 'troubleshootingText', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::CreateControlMappingSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AuditManager::CreateControlMappingSource object:

  $service_obj->Method(Att1 => { SourceDescription => $value, ..., TroubleshootingText => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AuditManager::CreateControlMappingSource object:

  $result = $service_obj->Method(...);
  $result->Att1->SourceDescription

=head1 DESCRIPTION

The mapping attributes that determine the evidence source for a given
control, along with related parameters and metadata. This doesn't
contain C<mappingID>.

=head1 ATTRIBUTES


=head2 SourceDescription => Str

The description of the data source that determines where Audit Manager
collects evidence from for the control.


=head2 SourceFrequency => Str

Specifies how often evidence is collected from the control mapping
source.


=head2 SourceKeyword => L<Paws::AuditManager::SourceKeyword>




=head2 SourceName => Str

The name of the control mapping data source.


=head2 SourceSetUpOption => Str

The setup option for the data source. This option reflects if the
evidence collection method is automated or manual. If you donE<rsquo>t
provide a value for C<sourceSetUpOption>, Audit Manager automatically
infers and populates the correct value based on the C<sourceType> that
you specify.


=head2 SourceType => Str

Specifies which type of data source is used to collect evidence.

=over

=item *

The source can be an individual data source type, such as
C<AWS_Cloudtrail>, C<AWS_Config>, C<AWS_Security_Hub>, C<AWS_API_Call>,
or C<MANUAL>.

=item *

The source can also be a managed grouping of data sources, such as a
C<Core_Control> or a C<Common_Control>.

=back



=head2 TroubleshootingText => Str

The instructions for troubleshooting the control.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

