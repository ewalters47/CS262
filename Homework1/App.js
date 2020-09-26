import React, { useState } from 'react';
import { View, FlatList, TouchableWithoutFeedback} from 'react-native';
import Header from './components/header';
import TodoItem from './components/todoItem';
import AddTodo from './components/addTodo';

export default function App() {
  const [todos, setTodos] = useState([
    { text: 'buy coffee', key: '1' },
    { text: 'create an app', key: '2' }
  ]);

  const pressHandler = (key) => {
    setTodos((prevTodos) => {
      return prevTodos.filter(todo => todo.key != key);
    });
  }

  const submitHandler = (text) => {
    setTodos((prevTodos) => {
      return [
        { text: text, key: Math.random().toString()},
          ...prevTodos
      ]
    })
  }

  return (
    <TouchableWithoutFeedback>
      <View>
        <Header />
        <View>
          <AddTodo submitHandler={submitHandler} />
          <View>
            <FlatList
            data={todos}
            renderItem={({ item }) => (
                <TodoItem item={item} pressHandler={pressHandler}/>
            )}

            />
          </View>
        </View>
      </View>
    </TouchableWithoutFeedback>
  );
}
