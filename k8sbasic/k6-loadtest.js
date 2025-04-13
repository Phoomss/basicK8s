import http from 'k6/http';
import { sleep } from 'k6';

export let options = {
    stages: [
        { duration: '10s', target: 200 },
        { duration: '60s', target: 400 },
        { duration: '30s', target: 200 },
        { duration: '10s', target: 0 },
    ]
}

export default function(){
    http.get('http://localhost:56961/')
    sleep(1);
}