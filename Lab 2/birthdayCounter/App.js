import { StatusBar } from 'expo-status-bar';
import React, {useState} from 'react';
import { StyleSheet, Text, View, TextInput, Button, FlatList} from 'react-native';

export default function App() {
  const [name, setName] = useState('Ethan');
  const [birthdays, newAge] = useState(5);

  return (
      <View style={styles.container}>

        <Text>Enter name:</Text>
        <TextInput
            style={styles.input}
            onChangeText={(val) => setName(val)}
        />

        <Text>{name} is {birthdays} years old</Text>

        <View style={styles.buttonContainer}>
          <Button title='birthday' onPress={() => newAge(1)}/>
        </View>
      </View>

  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
  input: {
    borderWidth: 1,
    borderColor: '#777',
    padding: 8,
    margin: 10,
    width: 200,
  },
  buttonContainer: {
    marginTop: 30
  }
});
