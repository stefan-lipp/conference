/**
 * API Institution model
 *
 * @export
 * @interface ApiInstitution
 */
export interface ApiInstitution {
  id: string;
  name: string;
  iconUrl?: string;
}

/**
 * Local institution model
 *
 * @export
 * @interface Institution
 */
export interface Institution extends ApiInstitution { }
