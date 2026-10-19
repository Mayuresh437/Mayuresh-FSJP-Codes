import { useState } from 'react'
import './App.css'

function App() {
  const [color, setColor] = useState('--')

  function handleClick(c){
    setColor(c)
    document.querySelector("body").style.backgroundColor = c
  }
  return (
    <>
      <h1>You Have Clicked {color} Button</h1>

      <div className="button-container">
        <button className="btn btn-red" onClick={(e) => {handleClick('Red')}}>Red</button>
        <button className="btn btn-green" onClick={(e) => {handleClick('Green')}}>Green</button>
        <button className="btn btn-blue" onClick={(e) => {handleClick('Blue')}}>Blue</button>
        <button className="btn btn-yellow" onClick={(e) => {handleClick('Yellow')}}>Yellow</button>
      </div>
    </>
  )
}
export default App