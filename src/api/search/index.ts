import request from '../request'

export default {
  search({ q }) {
    return request.post('/search', { query: q })
  },

  getQuery() {
    return request.get('/search/query')
  },

  postQuery(data) {
    return request.post('/search/query', data)
  },

  postOntologyAssociationsQuery(data) {
    return request.post('/search/associations', data)
  },

  getFilters() {
    return request.get('/search/filters')
  },

  getSavedQueries() {
    return request.get('/search/query/saved')
  },

  postSavedQuery(data) {
    return request.post('/search/query/saved', data)
  },

  deleteSavedQuery(uuid) {
    return request.delete(`/search/query/saved/${uuid}`)
  },
}
