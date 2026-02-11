import { defineCollection, z } from 'astro:content';

const projectsCollection = defineCollection({
    type: 'content',
    schema: z.object({
        title: z.string(),
        tags: z.array(z.string()).optional(),
        order: z.number().optional(),
    }),
});

const blogCollection = defineCollection({
    type: 'content',
    schema: z.object({
        title: z.string(),
        pubDate: z.date(),
        description: z.string().optional(),
        author: z.string().default('Yuan Chai'),
        tags: z.array(z.string()).optional(),
    }),
});

export const collections = {
    projects: projectsCollection,
    blog: blogCollection,
};
