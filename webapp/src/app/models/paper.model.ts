/**
 * Paper model.
 */
export interface Paper {
  id: string;
  title: string;
  authors: string[];
  // optionals
  keywords?: string;
  abstract?: string;
  link?: string;
  tag?: string;
}
