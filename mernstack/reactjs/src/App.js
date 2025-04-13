import { useState, useEffect } from 'react'
import axios from 'axios'

// const baseURL = "http://localhost:4000/api/products"
// const imageURL = "http://localhost:4000"
const baseURL = process.env.REACT_APP_BASE_URL
const imageURL = process.env.REACT_APP_IMAGE_URL

function App() {

  const [products, setProducts] = useState(null)

  useEffect(() => {
    axios.get(baseURL).then((response) => {
      setProducts(response.data)
    })
  }, [])

  if (!products) return null

  return (
    <div style={{ display: 'flex', justifyContent: 'center', alignItems: 'center', flexDirection: 'column', minHeight: '100vh' }}>
      <h1>Product List</h1>
      <table border="1" cellspacing='0' cellpadding='10' style={{ width: '800px'}}>
        <thead>
          <tr>
            <th>ID</th>
            <th>Image</th>
            <th>Product Name</th>
            <th>Price</th>
          </tr>
        </thead>
        <tbody>
          {
            products.map(product => {
              return (
                <tr key={product.id}>
                  <td>{product.id}</td>
                  <td><img src={`${imageURL}${product.thumbnail}`} alt={product.productName} width="100" /></td>
                  <td>{product.productName}</td>
                  <td>{product.price}</td>
                </tr>
              )
            })
          }
        </tbody>
      </table>
    </div>
  )
}

export default App
