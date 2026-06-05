import { defineCollection, z } from 'astro:content';

const sharedSchema = z.object({
  title: z.string(),
  date: z.string(),
  summary: z.string(),
  tags: z.array(z.string()).optional(),
});

const blog = defineCollection({
  type: 'content',
  schema: sharedSchema,
});

const logs = defineCollection({
  type: 'content',
  schema: sharedSchema,
});

export const collections = {
  blog,
  logs,
};
