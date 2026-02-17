import { config, fields, collection, singleton } from '@keystatic/core';

const layerOptions = [
  { label: 'Glossar', value: 'layer/glossar' },
  { label: 'Handbook', value: 'layer/handbook' },
  { label: 'Templates & Harness', value: 'layer/templates-harness' },
  { label: 'Blackboard', value: 'layer/blackboard' },
  { label: 'Library', value: 'layer/library' },
];

const artifactOptions = [
  { label: 'Runbook', value: 'artifact/runbook' },
  { label: 'ADR', value: 'artifact/adr' },
  { label: 'Reference', value: 'artifact/reference' },
  { label: 'Policy', value: 'artifact/policy' },
  { label: 'How-to', value: 'artifact/how-to' },
  { label: 'Template', value: 'artifact/template' },
  { label: 'PR Report', value: 'artifact/pr-report' },
];

const tagField = fields.array(fields.text({ label: 'tags (validated by gates)' }), {
  label: 'Tags',
  itemLabel: (i) => i.value,
});

const baseFrontmatter = {
  project: fields.text({ label: 'project', validation: { isRequired: true } }),
  doc_type: fields.text({ label: 'doc_type', validation: { isRequired: true } }),
  version: fields.text({ label: 'version', validation: { isRequired: true } }),
  date: fields.text({ label: 'date', validation: { isRequired: true } }),
  status: fields.select({
    label: 'status',
    options: [
      { label: 'draft', value: 'draft' },
      { label: 'stable', value: 'stable' },
      { label: 'deprecated', value: 'deprecated' },
    ],
    defaultValue: 'draft',
  }),
  intent: fields.text({ label: 'intent', multiline: true }),
  tags: tagField,
};

export default config({
  storage: {
    kind: 'github',
    repo: process.env.KEYSTATIC_GITHUB_REPO || 'OWNER/REPO',
  },
  singletons: {
    glossary_latest: singleton({
      label: 'Glossar (latest)',
      path: 'meta/AgenticSWE_KnowledgeOS_Glossary_20260217_V6',
      schema: {
        ...baseFrontmatter,
        content: fields.markdown({ label: 'content' }),
      },
      format: { contentField: 'content' },
    }),
    taxonomy_latest: singleton({
      label: 'Taxonomie (latest)',
      path: 'meta/AgenticSWE_KnowledgeOS_Taxonomy_20260217_V2',
      schema: {
        ...baseFrontmatter,
        content: fields.markdown({ label: 'content' }),
      },
      format: { contentField: 'content' },
    }),
  },
  collections: {
    adrs: collection({
      label: 'ADRs',
      path: 'decisions-adr/*',
      schema: {
        ...baseFrontmatter,
        title: fields.text({ label: 'title', validation: { isRequired: true } }),
        content: fields.markdown({ label: 'content' }),
      },
      format: { contentField: 'content' },
    }),
    runbooks: collection({
      label: 'Runbooks',
      path: 'handbook/runbooks/*',
      schema: {
        ...baseFrontmatter,
        title: fields.text({ label: 'title', validation: { isRequired: true } }),
        content: fields.markdown({ label: 'content' }),
      },
      format: { contentField: 'content' },
    }),
  },
});
