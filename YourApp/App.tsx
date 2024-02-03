/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

import {
  Colors,
  DebugInstructions,
  LearnMoreLinks,
  ReloadInstructions,
} from 'react-native/Libraries/NewAppScreen';
import {FlatList, Header, Image, Linking, ScrollView, StyleSheet, Text, TouchableOpacity, View, useColorScheme} from 'react-native';

import type {PropsWithChildren} from 'react';
import React from 'react';

type SectionProps = PropsWithChildren<{
  title: string;
}>;

function Section({children, title}: SectionProps): React.JSX.Element {
  const isDarkMode = useColorScheme() === 'dark';
  return (
    <View style={styles.sectionContainer}>
      <Text
        style={[
          styles.sectionTitle,
          {
            color: isDarkMode ? Colors.white : Colors.black,
          },
        ]}>
        {title}
      </Text>
      <Text
        style={[
          styles.sectionDescription,
          {
            color: isDarkMode ? Colors.light : Colors.dark,
          },
        ]}>
        {children}
      </Text>
    </View>
  );
}

// uri: preview image
// url: youtube url

const images = [
  { id: '1', uri: 'https://media.discordapp.net/attachments/1118633568046960651/1203211737453695006/IMG_8235.jpg?ex=65d04540&is=65bdd040&hm=2af8ecc77c7e703da539c12a55268488bb2ea8e5d8766625dbeaefedf02a23d1&=&format=webp&width=712&height=948', url: 'https://youtu.be/ipob1BPw-bg?si=1eJXFqJme55J2XBF' },
  { id: '2', uri: 'https://media.discordapp.net/attachments/1118633568046960651/1203211737453695006/IMG_8235.jpg?ex=65d04540&is=65bdd040&hm=2af8ecc77c7e703da539c12a55268488bb2ea8e5d8766625dbeaefedf02a23d1&=&format=webp&width=712&height=948', url: 'https://www.youtube.com/watch?v=N7SHIw9rfyg' },
  { id: '3', uri: 'https://media.discordapp.net/attachments/1118633568046960651/1203211737453695006/IMG_8235.jpg?ex=65d04540&is=65bdd040&hm=2af8ecc77c7e703da539c12a55268488bb2ea8e5d8766625dbeaefedf02a23d1&=&format=webp&width=712&height=948', url: 'https://www.youtube.com/watch?v=N7SHIw9rfyg' },
  { id: '4', uri: 'https://media.discordapp.net/attachments/1118633568046960651/1203211737453695006/IMG_8235.jpg?ex=65d04540&is=65bdd040&hm=2af8ecc77c7e703da539c12a55268488bb2ea8e5d8766625dbeaefedf02a23d1&=&format=webp&width=712&height=948', url: 'https://www.youtube.com/watch?v=N7SHIw9rfyg' },
  { id: '5', uri: 'https://media.discordapp.net/attachments/1118633568046960651/1203211737453695006/IMG_8235.jpg?ex=65d04540&is=65bdd040&hm=2af8ecc77c7e703da539c12a55268488bb2ea8e5d8766625dbeaefedf02a23d1&=&format=webp&width=712&height=948', url: 'https://www.youtube.com/watch?v=N7SHIw9rfyg' },

  // Add more images and URLs as needed
];

const music = [
  { id: '1', uri: 'https://media.discordapp.net/attachments/1118633568046960651/1203211737453695006/IMG_8235.jpg?ex=65d04540&is=65bdd040&hm=2af8ecc77c7e703da539c12a55268488bb2ea8e5d8766625dbeaefedf02a23d1&=&format=webp&width=712&height=948', url: 'https://www.youtube.com/watch?v=VOdebhoM3oo' },
  { id: '2', uri: 'https://media.discordapp.net/attachments/1118633568046960651/1203211737453695006/IMG_8235.jpg?ex=65d04540&is=65bdd040&hm=2af8ecc77c7e703da539c12a55268488bb2ea8e5d8766625dbeaefedf02a23d1&=&format=webp&width=712&height=948', url: 'https://www.youtube.com/watch?v=N7SHIw9rfyg' },
  { id: '3', uri: 'https://media.discordapp.net/attachments/1118633568046960651/1203211737453695006/IMG_8235.jpg?ex=65d04540&is=65bdd040&hm=2af8ecc77c7e703da539c12a55268488bb2ea8e5d8766625dbeaefedf02a23d1&=&format=webp&width=712&height=948', url: 'https://www.youtube.com/watch?v=N7SHIw9rfyg' },
  { id: '4', uri: 'https://media.discordapp.net/attachments/1118633568046960651/1203211737453695006/IMG_8235.jpg?ex=65d04540&is=65bdd040&hm=2af8ecc77c7e703da539c12a55268488bb2ea8e5d8766625dbeaefedf02a23d1&=&format=webp&width=712&height=948', url: 'https://www.youtube.com/watch?v=N7SHIw9rfyg' },
  { id: '5', uri: 'https://media.discordapp.net/attachments/1118633568046960651/1203211737453695006/IMG_8235.jpg?ex=65d04540&is=65bdd040&hm=2af8ecc77c7e703da539c12a55268488bb2ea8e5d8766625dbeaefedf02a23d1&=&format=webp&width=712&height=948', url: 'https://www.youtube.com/watch?v=N7SHIw9rfyg' },

  // Add more images and URLs as needed
];


const sights = [
  { id: '1', uri: 'https://media.discordapp.net/attachments/1118633568046960651/1203211737453695006/IMG_8235.jpg?ex=65d04540&is=65bdd040&hm=2af8ecc77c7e703da539c12a55268488bb2ea8e5d8766625dbeaefedf02a23d1&=&format=webp&width=712&height=948', url: 'https://www.youtube.com/watch?v=VOdebhoM3oo' },
  { id: '2', uri: 'https://media.discordapp.net/attachments/1118633568046960651/1203211737453695006/IMG_8235.jpg?ex=65d04540&is=65bdd040&hm=2af8ecc77c7e703da539c12a55268488bb2ea8e5d8766625dbeaefedf02a23d1&=&format=webp&width=712&height=948', url: 'https://www.youtube.com/watch?v=N7SHIw9rfyg' },
  { id: '3', uri: 'https://media.discordapp.net/attachments/1118633568046960651/1203211737453695006/IMG_8235.jpg?ex=65d04540&is=65bdd040&hm=2af8ecc77c7e703da539c12a55268488bb2ea8e5d8766625dbeaefedf02a23d1&=&format=webp&width=712&height=948', url: 'https://www.youtube.com/watch?v=N7SHIw9rfyg' },
  { id: '4', uri: 'https://media.discordapp.net/attachments/1118633568046960651/1203211737453695006/IMG_8235.jpg?ex=65d04540&is=65bdd040&hm=2af8ecc77c7e703da539c12a55268488bb2ea8e5d8766625dbeaefedf02a23d1&=&format=webp&width=712&height=948', url: 'https://www.youtube.com/watch?v=N7SHIw9rfyg' },
  { id: '5', uri: 'https://media.discordapp.net/attachments/1118633568046960651/1203211737453695006/IMG_8235.jpg?ex=65d04540&is=65bdd040&hm=2af8ecc77c7e703da539c12a55268488bb2ea8e5d8766625dbeaefedf02a23d1&=&format=webp&width=712&height=948', url: 'https://www.youtube.com/watch?v=N7SHIw9rfyg' },

  // Add more images and URLs as needed
];

function handlePress(url) {
  Linking.openURL(url).catch(err => console.error("Failed to open URL:", err));
}

function App(): React.JSX.Element {
  return (
    <ScrollView contentInsetAdjustmentBehavior="automatic">
      <View>
        <Section title="Welcome to EyeTunes!!">
          Made with love by Cindy, Edison, Ian, and William.
        </Section>
        <Section title="Memories">
        <View style={styles.wrapContainer}>
        {images.map((item) => (
          <TouchableOpacity key={item.id} onPress={() => handlePress(item.url)} style={styles.touchable}>
            <Image source={{uri: item.uri}} style={styles.image} />
            <Text style={styles.text}>Click me</Text>
          </TouchableOpacity>
        ))}
      </View>
        </Section>
        <Section title="Music">
        <View style={styles.wrapContainer}>
          {sights.map((item) => (
            <TouchableOpacity key={item.id} onPress={() => handlePress(item.url)} style={styles.touchable}>
              <Image source={{uri: item.uri}} style={styles.image} />
              <Text style={styles.text}>Click me</Text>
            </TouchableOpacity>
          ))}
        </View>
        </Section>
        <Section title="Sights">
        <View style={styles.wrapContainer}>
          {sights.map((item) => (
            <TouchableOpacity key={item.id} onPress={() => handlePress(item.url)} style={styles.touchable}>
              <Image source={{uri: item.uri}} style={styles.image} />
              <Text style={styles.text}>Click me</Text>
            </TouchableOpacity>
          ))}
        </View>
        </Section>
        
      </View>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  sectionContainer: {
    marginTop: 32,
    paddingHorizontal: 24,
  },
  sectionTitle: {
    fontSize: 24,
    fontWeight: '600',
  },
  sectionDescription: {
    marginTop: 8,
    fontSize: 18,
    fontWeight: '400',
  },
  highlight: {
    fontWeight: '700',
  },
  scrollViewContainer: {
    alignItems: 'center',
    justifyContent: 'center',
  },
  wrapContainer: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'center',
  },
  touchable: {
    margin: 10,
    alignItems: 'center',
  },
  image: {
    width: 300,
    height: 300,
  },
  text: {
    marginTop: 5,
    color: '#000',
  },
});

export default App;
