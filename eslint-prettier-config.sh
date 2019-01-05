#!/bin/bash

YELLOW='\033[1;33m'
GREEN='\033[1;32m'
LCYAN='\033[1;36m'
NC='\033[0m' # No Color

echo -e "${GREEN}Starting Style Formatting Configuration... ${NC}"

echo -e "1/4 ${LCYAN}Local ESLint & Prettier Installation... ${NC}"
npm i -D eslint prettier

echo -e "2/4 ${YELLOW}Airbnb Configuration Installation... ${NC}"
npm i -D eslint-config-airbnb eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-react

echo -e "3/4 ${LCYAN}Disabling ESLint Formatting... ${NC}"
npm i -D eslint-config-prettier eslint-plugin-prettier eslint-plugin-flowtype@2.50.3

echo -e "4/4 ${YELLOW}Creating ESLint JSON... ${NC}"
touch .eslintrc.json

echo '{
  "extends": ["airbnb", "prettier"],
  "plugins": ["prettier"],
  "rules": {
    "prettier/prettier": ["error"],
    "jsx-a11y/href-no-hash": [0]
  }
}' >> .eslintrc.json

echo -e "${GREEN}Done! ${NC}"
