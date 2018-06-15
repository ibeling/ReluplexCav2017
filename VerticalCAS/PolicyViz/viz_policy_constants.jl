export relhs,dh0s,dh1s,taus,pa,NSTATES,ACTIONS, NEXT_ACTIONS

const relhs = [-8000, -7000, -6000, -5000, -4000, -3000, -2500, -2000, -1500, -1250, -1000, -950, -900, -850, -800, -750, -700, -650, -600, -550, -500, -450, -400, -350, -300, -250, -200, -150, -100, -50, 0, 50, 100, 150, 200, 250, 300, 350, 400, 450, 500, 550, 600, 650, 700, 750, 800, 850, 900, 950, 1000, 1250, 1500, 2000, 2500, 3000, 4000, 5000, 6000, 7000, 8000]

const dh0s = [-100, -83.3333, -66.6667, -50, -41.6667, -33.3333, -25, -16.6667, -8.33333, 0, 8.33333, 16.6667, 25, 33.3333, 41.6667, 50, 66.6667, 83.3333, 100] 
const dh1s   = [-100, -83.3333, -66.6667, -50, -41.6667, -33.3333, -25, -16.6667, -8.33333, 0, 8.33333, 16.6667, 25, 33.3333, 41.6667, 50, 66.6667, 83.3333, 100]
const taus   = [6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38,39,40,]
const pas    = [1, 2, 3, 4, 5,6,7,8,9,10,11]

#const pasTrue = [0, -1.5, 1.5, -3.0, 3.0]
const NSTATES = length(relhs)*length(dh0s)*length(taus)*length(dh1s)
const ACTIONS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

const NEXT_ACTIONS = Any[[1  2  3  4  5  6               ],
[1  2  3  4        7  8         ],
[1  2  3  4        7  8         ],
[1  2  3  4        7  8  9 10   ],
[1  2  3  4  5        8  9      ],
[1  2  3  4     6  7       10   ],
[1  2  3  4        7  8  9      ],
[1  2  3  4        7  8    10   ],
[1  2  3  4           8  9      ],
[1  2  3  4        7       10   ],
[1  2  3  4        7  8       11]]