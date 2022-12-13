import axios from 'axios';

export default {
    createRequest(request) {
        return axios.post('/maintenance/new', request)
    },
    getAllRequests() {
        return axios.get('/maintenance')
    },
    getSpecificRequest(ID) {
        return axios.get(`/maintenance/${ID}`)
    },
    getRequestsByPropertyID(ID) {
        return axios.get(`/maintenance/property/${ID}`)
    },
    getRequestsByPropertyPrincipal() {
        return axios.get(`/maintenance/property/own`)
    },
    assignWorker(request) {
        return axios.put(`/maintenance/assign`, request)
    },
    markComplete(request) {
        return axios.put(`/maintenance/complete`, request)
    },
    getRequestsByStatus() {
        return axios.get(`/maintenance/status`)
    },
}