import { Event, EventType, Paper } from '../../models/event.model';

export var EVENTS: Event[] = [
  {
    id: '8ddbc173-1b71-462e-af3e-b9d40f722797',
    title: 'Repairing Data through Regular Expressions',
    paper: {
         id :'sdf',
         paperTitle: 'Das Paper hat einen Namen!',
         abstract: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est',
         keywords: 'Databases, Mockups',
         link: 'http://www.loremipsum.de/',
         authors: ['Dr. Stefan Riedmann', 'Markus Brunner','Thomas Schreier, PhD' ]
        },
    duration: 20,
    type: EventType.ResearchTalk,
    favoured: false,
  },
  {
    id: 'f8610e59-a700-4551-a6f2-4520e9bf7425',
    title: 'Machine Learning in the Real World',
    duration: 90,
    type: EventType.Tutorial,
    favoured: true,
  },
  {
    id: '236a3b0a-2e5f-48b7-ab5a-947591afe9ef',
    title: 'NLProv: Natural Language Provenance',
    duration: 45,
    type: EventType.Demo,
    favoured: false,
  },
  {
    id: '0a8cad76-4145-401e-b6b2-944df71282ae',
    title: 'Parallel Local Graph Clustering',
    duration: 20,
    type: EventType.ResearchTalk,
    favoured: false,
  },
];
