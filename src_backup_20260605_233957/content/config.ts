import { defineCollection, z } from 'astro:content';

const articleSchema = z.object({
  title: z.string(),
  date: z.string(),
  summary: z.string(),
  tags: z.array(z.string()).default([]),
});

const blog = defineCollection({
  type: 'content',
  schema: articleSchema,
});

const logs = defineCollection({
  type: 'content',
  schema: articleSchema,
});

export const collections = {
  blog,
  logs,
};
