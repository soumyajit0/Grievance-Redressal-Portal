// SETTINGS
const LOADER_CIRCLE_SPEED = 1000; // in milliseconds
const LOADER_CIRCLE_COUNT = 5;
const LOADER_CIRCLE_COLORS = ["red", "green", "purple", "#000"];
const LOADER_CIRCLE_BORDER_WIDTH = 12;
const LOADER_CIRCLE_DELAY = 800; // in milliseconds
const LOADER_CIRCLE_BORDER_TYPE = "solid";
const LOADER_CIRCLE_BORDER_RADIUS = "50%"; // use CSS values
const LOADER_CIRCLE_SYNC_ALL = true; // only boolean

/* DEVELOPED BY @shanuraj715 */

// DO NOT EDIT THE BELOW CODE
const colorsCount = LOADER_CIRCLE_COLORS.length;
const maxI =
  colorsCount >= 4 && LOADER_CIRCLE_COUNT > colorsCount
    ? colorsCount
    : LOADER_CIRCLE_COUNT;
const animationDuration = LOADER_CIRCLE_SYNC_ALL
  ? (LOADER_CIRCLE_DELAY / 1000) * maxI
  : (LOADER_CIRCLE_SPEED + LOADER_CIRCLE_DELAY) / 1000;

const generateProperties = (index) => ({
  animationDuration: `${animationDuration}s`,
  borderColor: LOADER_CIRCLE_COLORS[index % colorsCount],
  borderWidth: `${LOADER_CIRCLE_BORDER_WIDTH}px`,
  animationDelay: `${index * (LOADER_CIRCLE_DELAY / 1000)}s`,
  borderStyle: LOADER_CIRCLE_BORDER_TYPE,
  borderRadius: LOADER_CIRCLE_BORDER_RADIUS
});

const addProperty = (obj, element) => {
  Object.entries(obj).forEach((item) => {
    element.style[item[0]] = item[1];
  });
};

let elems = [];
for (let i = 0; i < maxI; i++) {
  let element = document.createElement("span");
  element.classList.add("circle");
  addProperty(generateProperties(i), element);
  elems.push(element);
}

// ADD CIRCLES
const container = document.getElementById("spinner-container");
elems.forEach((item) => container.appendChild(item));
