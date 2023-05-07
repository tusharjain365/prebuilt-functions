int prime[N];
vector<ll>pr;
void sieve() {
    // memset(prime,0,sizeof(prime));
    for(int i=0;i<N;i++) prime[i] = i;
    for(int i=0;i<N;i++) prime[i] = 1;
    for(int i=2;i<N;i++) 
        // if(prime[i]== i) 
        //     for(int j = i;j<N;j+=i) prime[j] = min(prime[j], i);
        if(prime[i]) {
            for(ll j=1LL*i*i;j<N;j++) prime[j] = 0;
        }
    for(ll i=2;i<N;i++) 
        if(!prime[i]) 
            pr.push_back(i);
}
