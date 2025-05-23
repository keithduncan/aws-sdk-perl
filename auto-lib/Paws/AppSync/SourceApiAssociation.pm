# Generated by default/object.tt
package Paws::AppSync::SourceApiAssociation;
  use Moose;
  has AssociationArn => (is => 'ro', isa => 'Str', request_name => 'associationArn', traits => ['NameInRequest']);
  has AssociationId => (is => 'ro', isa => 'Str', request_name => 'associationId', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has LastSuccessfulMergeDate => (is => 'ro', isa => 'Str', request_name => 'lastSuccessfulMergeDate', traits => ['NameInRequest']);
  has MergedApiArn => (is => 'ro', isa => 'Str', request_name => 'mergedApiArn', traits => ['NameInRequest']);
  has MergedApiId => (is => 'ro', isa => 'Str', request_name => 'mergedApiId', traits => ['NameInRequest']);
  has SourceApiArn => (is => 'ro', isa => 'Str', request_name => 'sourceApiArn', traits => ['NameInRequest']);
  has SourceApiAssociationConfig => (is => 'ro', isa => 'Paws::AppSync::SourceApiAssociationConfig', request_name => 'sourceApiAssociationConfig', traits => ['NameInRequest']);
  has SourceApiAssociationStatus => (is => 'ro', isa => 'Str', request_name => 'sourceApiAssociationStatus', traits => ['NameInRequest']);
  has SourceApiAssociationStatusDetail => (is => 'ro', isa => 'Str', request_name => 'sourceApiAssociationStatusDetail', traits => ['NameInRequest']);
  has SourceApiId => (is => 'ro', isa => 'Str', request_name => 'sourceApiId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::SourceApiAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::SourceApiAssociation object:

  $service_obj->Method(Att1 => { AssociationArn => $value, ..., SourceApiId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::SourceApiAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociationArn

=head1 DESCRIPTION

Describes the configuration of a source API. A source API is a GraphQL
API that is linked to a merged API. There can be multiple source APIs
attached to each merged API. When linked to a merged API, the source
API's schema, data sources, and resolvers will be combined with other
linked source API data to form a new, singular API.

Source APIs can originate from your account or from other accounts via
Amazon Web Services Resource Access Manager. For more information about
sharing resources from other accounts, see What is Amazon Web Services
Resource Access Manager?
(https://docs.aws.amazon.com/ram/latest/userguide/what-is.html) in the
I<Amazon Web Services Resource Access Manager> guide.

=head1 ATTRIBUTES


=head2 AssociationArn => Str

The Amazon Resource Name (ARN) of the source API association.


=head2 AssociationId => Str

The ID generated by the AppSync service for the source API association.


=head2 Description => Str

The description field.


=head2 LastSuccessfulMergeDate => Str

The datetime value of the last successful merge of the source API
association. The result will be in UTC format and your local time zone.


=head2 MergedApiArn => Str

The Amazon Resource Name (ARN) of the AppSync Merged API.


=head2 MergedApiId => Str

The ID of the AppSync Merged API.


=head2 SourceApiArn => Str

The Amazon Resource Name (ARN) of the AppSync source API.


=head2 SourceApiAssociationConfig => L<Paws::AppSync::SourceApiAssociationConfig>

The C<SourceApiAssociationConfig> object data.


=head2 SourceApiAssociationStatus => Str

The state of the source API association.


=head2 SourceApiAssociationStatusDetail => Str

The detailed message related to the current state of the source API
association.


=head2 SourceApiId => Str

The ID of the AppSync source API.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

