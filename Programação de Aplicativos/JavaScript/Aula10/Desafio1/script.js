let users = []
let posts = []

async function fetchData() {
    const userData = await fetch('https://jsonplaceholder.typicode.com/users')
    const postsData = await fetch('https://jsonplaceholder.typicode.com/posts')
    users = await userData.json()
    posts = await postsData.json()
}

async function setData(){
    await fetchData();
    
    const userId = users.map((ar) =>{
    let arrPosts = []
        const postId = posts.map((arr)=> {
            if (arr.userId == ar.id){
                return arrPosts.push({id: arr.id, title: arr.title, body: arr.body})
            }
        })
        return {name: ar.name, postList: arrPosts}
    })

console.log(userId)
}


setData();