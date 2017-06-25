const express = require('express')
const app = express()
const port = 3003
app.get('/', (req, res)=>{
    res.send('Success! test')
})

app.listen(port, ()=>{
    console.log(`Application is listening on port: ${port}`)
})