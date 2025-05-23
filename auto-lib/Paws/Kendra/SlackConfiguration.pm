# Generated by default/object.tt
package Paws::Kendra::SlackConfiguration;
  use Moose;
  has CrawlBotMessage => (is => 'ro', isa => 'Bool');
  has ExcludeArchived => (is => 'ro', isa => 'Bool');
  has ExclusionPatterns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has FieldMappings => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::DataSourceToIndexFieldMapping]');
  has InclusionPatterns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LookBackPeriod => (is => 'ro', isa => 'Int');
  has PrivateChannelFilter => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PublicChannelFilter => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SecretArn => (is => 'ro', isa => 'Str', required => 1);
  has SinceCrawlDate => (is => 'ro', isa => 'Str', required => 1);
  has SlackEntityList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has TeamId => (is => 'ro', isa => 'Str', required => 1);
  has UseChangeLog => (is => 'ro', isa => 'Bool');
  has VpcConfiguration => (is => 'ro', isa => 'Paws::Kendra::DataSourceVpcConfiguration');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::SlackConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::SlackConfiguration object:

  $service_obj->Method(Att1 => { CrawlBotMessage => $value, ..., VpcConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::SlackConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CrawlBotMessage

=head1 DESCRIPTION

Provides the configuration information to connect to Slack as your data
source.

Amazon Kendra now supports an upgraded Slack connector.

You must now use the TemplateConfiguration
(https://docs.aws.amazon.com/kendra/latest/APIReference/API_TemplateConfiguration.html)
object instead of the C<SlackConfiguration> object to configure your
connector.

Connectors configured using the older console and API architecture will
continue to function as configured. However, you wonE<rsquo>t be able
to edit or update them. If you want to edit or update your connector
configuration, you must create a new connector.

We recommended migrating your connector workflow to the upgraded
version. Support for connectors configured using the older architecture
is scheduled to end by June 2024.

=head1 ATTRIBUTES


=head2 CrawlBotMessage => Bool

C<TRUE> to index bot messages from your Slack workspace team.


=head2 ExcludeArchived => Bool

C<TRUE> to exclude archived messages to index from your Slack workspace
team.


=head2 ExclusionPatterns => ArrayRef[Str|Undef]

A list of regular expression patterns to exclude certain attached files
in your Slack workspace team. Files that match the patterns are
excluded from the index. Files that donE<rsquo>t match the patterns are
included in the index. If a file matches both an inclusion and
exclusion pattern, the exclusion pattern takes precedence and the file
isn't included in the index.


=head2 FieldMappings => ArrayRef[L<Paws::Kendra::DataSourceToIndexFieldMapping>]

A list of C<DataSourceToIndexFieldMapping> objects that map Slack data
source attributes or field names to Amazon Kendra index field names. To
create custom fields, use the C<UpdateIndex> API before you map to
Slack fields. For more information, see Mapping data source fields
(https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html). The
Slack data source field names must exist in your Slack custom metadata.


=head2 InclusionPatterns => ArrayRef[Str|Undef]

A list of regular expression patterns to include certain attached files
in your Slack workspace team. Files that match the patterns are
included in the index. Files that don't match the patterns are excluded
from the index. If a file matches both an inclusion and exclusion
pattern, the exclusion pattern takes precedence and the file isn't
included in the index.


=head2 LookBackPeriod => Int

The number of hours for change log to look back from when you last
synchronized your data. You can look back up to 7 days or 168 hours.

Change log updates your index only if new content was added since you
last synced your data. Updated or deleted content from before you last
synced does not get updated in your index. To capture updated or
deleted content before you last synced, set the C<LookBackPeriod> to
the number of hours you want change log to look back.


=head2 PrivateChannelFilter => ArrayRef[Str|Undef]

The list of private channel names from your Slack workspace team. You
use this if you want to index specific private channels, not all
private channels. You can also use regular expression patterns to
filter private channels.


=head2 PublicChannelFilter => ArrayRef[Str|Undef]

The list of public channel names to index from your Slack workspace
team. You use this if you want to index specific public channels, not
all public channels. You can also use regular expression patterns to
filter public channels.


=head2 B<REQUIRED> SecretArn => Str

The Amazon Resource Name (ARN) of an Secrets Manager secret that
contains the key-value pairs required to connect to your Slack
workspace team. The secret must contain a JSON structure with the
following keys:

=over

=item *

slackTokenE<mdash>The user or bot token created in Slack. For more
information on creating a token in Slack, see Authentication for a
Slack data source
(https://docs.aws.amazon.com/kendra/latest/dg/data-source-slack.html#slack-authentication).

=back



=head2 B<REQUIRED> SinceCrawlDate => Str

The date to start crawling your data from your Slack workspace team.
The date must follow this format: C<yyyy-mm-dd>.


=head2 B<REQUIRED> SlackEntityList => ArrayRef[Str|Undef]

Specify whether to index public channels, private channels, group
messages, and direct messages. You can specify one or more of these
options.


=head2 B<REQUIRED> TeamId => Str

The identifier of the team in the Slack workspace. For example,
I<T0123456789>.

You can find your team ID in the URL of the main page of your Slack
workspace. When you log in to Slack via a browser, you are directed to
the URL of the main page. For example,
I<https://app.slack.com/client/B<T0123456789>/...>.


=head2 UseChangeLog => Bool

C<TRUE> to use the Slack change log to determine which documents
require updating in the index. Depending on the Slack change log's
size, it may take longer for Amazon Kendra to use the change log than
to scan all of your documents in Slack.


=head2 VpcConfiguration => L<Paws::Kendra::DataSourceVpcConfiguration>

Configuration information for an Amazon Virtual Private Cloud to
connect to your Slack. For more information, see Configuring a VPC
(https://docs.aws.amazon.com/kendra/latest/dg/vpc-configuration.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

